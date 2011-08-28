module Imagine
  class Plugins < Array

    def initialize
      @plugins = []
    end

    def find_by_name(name)
      self.detect { |plugin| plugin.name == name }
    end
    alias :[] :find_by_name

    def names
      self.map(&:name)
    end

    def pathnames
      self.map(&:pathname).compact.uniq
    end

    class << self
      def active
        @active_plugins ||= self.new
      end

      def registered
        @registered_plugins ||= self.new
      end

      def activate(name)
        active << registered[name] if registered[name] && !active[name]
      end

      def deactivate(name)
        active.delete_if {|p| p.name == name}
      end

      def set_active(names)
        @active_plugins = self.new

        names.each do |name|
          activate(name)
        end
      end
    end
  end
end
