Imagine::Config.new do |config|
  # Configure your choice of orm
  #   supports: :active_record or :mongoid
  #   defaults: :active_record
  # config.orm = :mongoid

  # Configure which of the built in plugins to load with an array
  #   supports: :basic_list_view, :orbit_view, :galleria_view
  #   defaults: [ :basic_list_view, :orbit_view, :galleria_view ]
  # config.plugins = [ :basic_list_view, :orbit_view, :galleria_view ]

  # Configure which plugin should be the default plugin
  #   supports: Any loaded pluing name
  #   defaults: :basic_list_view
  # config.default_plugin = :basic_list_view
end
