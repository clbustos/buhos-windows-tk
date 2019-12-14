module Moneta
  module Adapters
    # LRUHash backend
    #
    # Based on Hashery::LRUHash but simpler and measures both memory usage and hash size.
    #
    # @api public
    class LRUHash
      include Defaults
      include IncrementSupport
      include CreateSupport

      DEFAULT_MAX_SIZE = 1024000
      DEFAULT_MAX_COUNT = 10240

      supports :each_key

      # @param [Hash] options
      # @option options [Integer] :max_size (1024000) Maximum byte size of all values, nil disables the limit
      # @option options [Integer] :max_value (options[:max_size]) Maximum byte size of one value, nil disables the limit
      # @option options [Integer] :max_count (10240) Maximum number of values, nil disables the limit
      def initialize(options = {})
        @max_size = options.fetch(:max_size) { DEFAULT_MAX_SIZE }
        @max_count = options.fetch(:max_count) { DEFAULT_MAX_COUNT }
        @max_value = [options[:max_value], @max_size].compact.min
        clear
      end

      # (see Proxy#key?)
      def key?(key, options = {})
        @entry.key?(key)
      end

      # (see Proxy#each_key)
      def each_key(&block)
        return enum_for(:each_key) { @entry.length } unless block_given?

        @entry.each_key { |k| yield(k) }
        self
      end

      # (see Proxy#load)
      def load(key, options = {})
        if entry = @entry[key]
          entry.insert_after(@list)
          entry.value
        end
      end

      # (see Proxy#store)
      def store(key, value, options = {})
        if @max_value && value.bytesize > @max_value
          delete(key)
        else
          if entry = @entry[key]
            @size -= entry.value.bytesize if @max_size
          else
            @entry[key] = entry = Entry.new
            entry.key = key
          end
          entry.value = value
          @size += entry.value.bytesize if @max_size
          entry.insert_after(@list)
          delete(@list.prev.key) while @list.next != @list.prev && (@max_size && @size > @max_size || @max_count && @entry.size > @max_count)
        end
        value
      end

      # (see Proxy#delete)
      def delete(key, options = {})
        if entry = @entry.delete(key)
          @size -= entry.value.bytesize if @max_size
          entry.unlink
          entry.value
        end
      end

      # (see Proxy#clear)
      def clear(options = {})
        @entry, @size = {}, 0
        @list = Entry.new
        @list.prev = @list.next = @list
        self
      end

      # (see Proxy#values_at)
      def values_at(*keys, **options)
        @entry.values_at(*keys).map do |entry|
          if entry
            entry.insert_after(@list)
            entry.value
          end
        end
      end

      # (see Proxy#slice)
      def slice(*keys, **options)
        return super unless @entry.respond_to?(:slice)
        hash = @entry.slice(*keys)
        hash.each do |key, entry|
          entry.insert_after(@list)
          hash[key] = entry.value
        end
      end

      private

      class Entry
        attr_accessor :key, :value, :prev, :next

        def unlink
          @prev.next = @next if @prev
          @next.prev = @prev if @next
          @prev = @next = nil
        end

        def insert_after(entry)
          if entry.next != self
            unlink
            @next = entry.next
            @prev = entry
            entry.next.prev = self
            entry.next = self
          end
        end
      end
    end
  end
end
