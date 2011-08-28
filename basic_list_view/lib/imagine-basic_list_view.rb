module Imagine
  module BasicListView

    class << self
      attr_accessor :root
      def root
        @root ||= Pathname.new(File.expand_path('../../', __FILE__))
      end
    end

    class Engine < ::Rails::Engine
      isolate_namespace ::Imagine

      config.after_initialize do |app|
        ::Imagine::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = 'imagine_basic_list_view'
          plugin.directory = 'basic_list_view'
          plugin.version = %q{0.0.1}
        end
      end

    end
  end
end

::Imagine.engines << 'basic_list_view'
