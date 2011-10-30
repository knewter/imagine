module Imagine
  module GalleriaView
    class Engine < ::Rails::Engine
      isolate_namespace ::Imagine
      engine_name 'imagine_galleria_view'

      config.after_initialize do |app|
        ::Imagine::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = 'imagine_galleria_view'
          plugin.directory = 'galleria_view'
          plugin.version = %q{0.1.9}
        end
      end

    end
  end
end

::Imagine.engines << 'galleria_view'
