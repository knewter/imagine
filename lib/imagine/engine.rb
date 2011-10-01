module Imagine
  class Engine < ::Rails::Engine
    isolate_namespace Imagine
  end

  module Warehouses
    autoload :Album, File.expand_path('../../../app/warehouses/imagine/album', __FILE__)
    autoload :Image, File.expand_path('../../../app/warehouses/imagine/image', __FILE__)
  end
end
