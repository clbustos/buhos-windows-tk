require 'moneta/adapters/mongo/base'
require 'moped'

module Moneta
  module Adapters
    # MongoDB backend
    #
    # Supports expiration, documents will be automatically removed starting
    # with mongodb >= 2.2 (see {http://docs.mongodb.org/manual/tutorial/expire-data/}).
    #
    # You can store hashes directly using this adapter.
    #
    # @example Store hashes
    #     db = Moneta::Adapters::MongoMoped.new
    #     db['key'] = {a: 1, b: 2}
    #
    # @api public
    class MongoMoped < MongoBase
      # @param [Hash] options
      # @option options [String] :collection ('moneta') MongoDB collection name
      # @option options [String] :host ('127.0.0.1') MongoDB server host
      # @option options [String] :user Username used to authenticate
      # @option options [String] :password Password used to authenticate
      # @option options [Integer] :port (MongoDB default port) MongoDB server port
      # @option options [String] :db ('moneta') MongoDB database
      # @option options [Integer] :expires Default expiration time
      # @option options [String] :expires_field ('expiresAt') Document field to store expiration time
      # @option options [String] :value_field ('value') Document field to store value
      # @option options [String] :type_field ('type') Document field to store value type
      # @option options [::Moped::Session] :backend Use existing backend instance
      # @option options Other options passed to `Moped::Session#new`
      def initialize(options = {})
        super(options)
        collection = options.delete(:collection) || 'moneta'
        db = options.delete(:db) || 'moneta'
        user = options.delete(:user)
        password = options.delete(:password)
        @backend = options[:backend] ||
          begin
            host = options.delete(:host) || '127.0.0.1'
            port = options.delete(:port) || DEFAULT_PORT
            ::Moped::Session.new(["#{host}:#{port}"])
          end
        @backend.use(db)
        @backend.login(user, password) if user && password
        @collection = @backend[collection]
        if @backend.command(buildinfo: 1)['version'] >= '2.2'
          @collection.indexes.create({ @expires_field => 1 }, expireAfterSeconds: 0)
        else
          warn 'Moneta::Adapters::Mongo - You are using MongoDB version < 2.2, expired documents will not be deleted'
        end
      end

      # (see Proxy#load)
      def load(key, options = {})
        key = to_binary(key)
        doc = @collection.find(_id: key).one
        if doc && (!doc[@expires_field] || doc[@expires_field] >= Time.now)
          # @expires_field must be a Time object (BSON date datatype)
          expires = expires_at(options, nil)
          @collection.find(_id: key).update(:$set => { @expires_field => expires || nil }) if expires != nil
          doc_to_value(doc)
        end
      end

      # (see Proxy#store)
      def store(key, value, options = {})
        key = to_binary(key)
        @collection.find(_id: key).upsert(value_to_doc(key, value, options))
        value
      end

      # (see Proxy#each_key)
      def each_key
        return enum_for(:each_key) unless block_given?
        @collection.find.each { |doc| yield from_binary(doc[:_id]) }
        self
      end

      # (see Proxy#delete)
      def delete(key, options = {})
        value = load(key, options)
        @collection.find(_id: to_binary(key)).remove if value
        value
      end

      # (see Proxy#increment)
      def increment(key, amount = 1, options = {})
        @backend.with(safe: true, consistency: :strong) do |safe|
          safe[@collection.name].
            find(_id: to_binary(key)).
            modify({:$inc => { @value_field => amount }},
                   new: true,
                   upsert: true)[@value_field]
        end
      rescue ::Moped::Errors::OperationFailure
        tries ||= 0
        tries += 1
        retry if tries < 3
        raise # otherwise
      end

      # (see Proxy#create)
      def create(key, value, options = {})
        key = to_binary(key)
        @backend.with(safe: true, consistency: :strong) do |safe|
          safe[@collection.name].insert(value_to_doc(key, value, options))
        end
        true
      rescue ::Moped::Errors::MongoError => ex
        raise if ex.details['code'] != 11000 # duplicate key error
        false
      end

      # (see Proxy#clear)
      def clear(options = {})
        @collection.find.remove_all
        self
      end

      # (see Proxy#slice)
      def slice(*keys, **options)
        query = @collection.find(_id: {:$in => keys.map(&method(:to_binary))})
        pairs = query.map do |doc|
          next if doc[@expires_field] && doc[@expires_field] < Time.now
          [from_binary(doc[:_id]), doc_to_value(doc)]
        end.compact

        if (expires = expires_at(options, nil)) != nil
          query.update_all(:$set => { @expires_field => expires || nil })
        end

        pairs
      end

      # (see Proxy#merge!)
      def merge!(pairs, options = {})
        @backend.with(safe: true, consistency: :strong) do |safe|
          collection = safe[@collection.name]
          existing = collection.
            find(_id: {:$in => pairs.map { |key, _| to_binary(key) }.to_a}).
            map{ |doc| [from_binary(doc[:_id]), doc_to_value(doc)] }.
            to_h

          update_pairs, insert_pairs = pairs.partition { |key, _| existing.key?(key) }
          unless insert_pairs.empty?
            collection.insert(insert_pairs.map do |key, value|
              value_to_doc(to_binary(key), value, options)
            end)
          end

          update_pairs.each do |key, value|
            value = yield(key, existing[key], value) if block_given?
            binary = to_binary(key)
            collection.
              find(_id: binary).
              update(value_to_doc(binary, value, options))
          end
        end
        self
      end
    end
  end
end
