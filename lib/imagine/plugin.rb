module Imagine
  module Engines; end;

  class Plugin

    attr_accessor :name, :version, :pathname
    attr_reader   :description

    def self.register(&block)
      yield(plugin = self.new)

      raise "A plugin MUST have a name!: #{plugin.inspect}" if plugin.name.blank?

      # add the new plugin to the collection of registered plugins
      ::Refinery::Plugins.registered << plugin
    end

    def pathname=(value)
      value = Pathname.new(value) if value.is_a? String
      @pathname = value
    end

  # Make this protected, so that only Plugin.register can use it.
  protected
    def initialize
      # provide a default pathname to where this plugin is using its lib directory.
      depth = RUBY_VERSION >= "1.9.2" ? 4 : 3
      self.pathname ||= Pathname.new(caller(depth).first.match("(.*)#{File::SEPARATOR}lib")[1])
    end
  end
end
