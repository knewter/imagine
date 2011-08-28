module Imagine
  class Plugins < Array

    def initialize
      @plugins = []
    end

    class << self
      def registered
        @registered_plugins ||= self.new
      end
    end
  end
end
