module Imagine
  module BasicListView
    class Engine < ::Rails::Engine
      isolate_namespace ::Imagine

      config.after_initialize do |app|
        ::Imagine::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = 'imagine_basic_list_view'
          plugin.directory = 'basic_list_view'
          plugin.version = %q{0.1.3}
        end
      end

    end
  end
end

::Imagine.engines << 'basic_list_view'
