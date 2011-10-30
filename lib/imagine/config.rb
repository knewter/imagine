module Imagine
  class Config
    attr_accessor :orm, :plugins, :default_plugin, :engines

    def initialize(options={}, &block)
      self.orm  = options.delete(:orm)
      self.plugins  = options.delete(:plugins)
      self.default_plugin = options.delete(:default_plugin)
      self.engines = []
      instance_eval &block if block_given?
    end

    def orm(orm=nil)
      @orm = orm if orm
      @orm ||= :active_record
    end

    def plugins(plugins=nil)
      @plugins = plugins if plugins
      @plugins ||= load_all_plugins
    end

    def default_plugin(default_plugin=nil)
      @default_plugin = default_plugin if default_plugin
      @default_plugin ||= load_default_plugin
    end

    private

      def load_all_plugins
        plugin_path = File.expand_path('../../../plugins/', __FILE__)
        Dir.entries(plugin_path).sort.each.inject([]) do |plugins, dir|
          unless [ nil, '.', '..' ].include?(dir.to_s)
            plugins << dir.to_sym if File.directory? File.join(plugin_path, dir)
          end
          plugins
        end
      end

      def load_default_plugin
        index = self.plugins.index(:basic_list_view) || 0
        self.plugins[index]
      end

  end
end
