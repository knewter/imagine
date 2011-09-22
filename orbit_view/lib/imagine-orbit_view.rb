module Imagine
  module OrbitView
    class Engine < ::Rails::Engine
      isolate_namespace ::Imagine
      engine_name 'imagine_orbit_view'

      config.after_initialize do |app|
        ::Imagine::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = 'imagine_orbit_view'
          plugin.directory = 'orbit_view'
          plugin.version = %q{0.1.5}
        end
      end

    end
  end
end

::Imagine.engines << 'orbit_view'
