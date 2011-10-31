module Imagine
  class Engine < ::Rails::Engine
    isolate_namespace Imagine
  end

  module Warehouses
    warehouses = File.expand_path('../../../app/warehouses/imagine/', __FILE__)
    autoload :Album, File.join(warehouses, 'album')
    autoload :Image, File.join(warehouses, 'image')
  end
end
