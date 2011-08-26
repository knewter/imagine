module Imagine
  class Engine < Rails::Engine
    isolate_namespace Imagine
  end
end

# FIXME: Why can't I get this into autoload for rails?
require File.expand_path('../../../app/warehouses/imagine/album', __FILE__)
require File.expand_path('../../../app/warehouses/imagine/image', __FILE__)
