require 'thread'

module Moneta
  # Creates a pool of stores.
  # Each thread gets its own store.
  #
  # @example Add `Moneta::Pool` to proxy stack
  #   Moneta.build do
  #     use(:Pool) do
  #       # Every thread gets its own instance
  #       adapter :MemcachedNative
  #     end
  #   end
  #
  # @api public
  class Pool < Wrapper
    # @param [Hash] options
    # @option options [String] :mutex (::Mutex.new) Mutex object
    def initialize(options = {}, &block)
      super(nil)
      @mutex = options[:mutex] || ::Mutex.new
      @id = "Moneta::Pool(#{object_id})"
      @builder = Builder.new(&block)
      @pool, @all = [], []
    end

    def close
      @mutex.synchronize do
        raise '#close can only be called when no thread is using the pool' if @all.size != @pool.size
        @all.each(&:close)
        @all = @pool = nil
      end
    end

    protected

    def adapter
      Thread.current[@id]
    end

    def wrap(*args, &block)
      if checked_out?
        yield
      else
        check_out!(&block)
      end
    end

    def checked_out?
      Thread.current.key?(@id) && Thread.current[@id] != nil
    end

    def check_out!
      store = Thread.current[@id] = pop
      yield
    ensure
      Thread.current[@id] = nil
      @mutex.synchronize { @pool << store }
    end

    def pop
      unless store = @mutex.synchronize { @pool.pop }
        store = @builder.build.last
        @mutex.synchronize { @all << store }
      end
      store
    end
  end
end
