require "pkgr/distributions/debian"

module Pkgr
  module Distributions
    # Contains the various components required to make a packaged app integrate well with a Ubuntu system.
    class Ubuntu < Debian
      # Keep everything
      def release
        @release
      end

      def runner
        @runner ||= Runner.new("upstart", "1.5")
      end

      def templates
        list = super
        list.push Templates::DirTemplate.new("etc/init")
        list
      end
    end
  end
end
