# Prepare plugin system
%w(engine plugins plugin).each do |lib|
  require "imagine/#{lib}"
end

module Imagine
  class << self
    def engines
      @engines ||= []
    end

    def default_plugin=(plugin)
      @default_plugin = plugin
    end

    def default_plugin
      @default_plugin
    end
  end
end

# Require the built in engines
%w(basic_list_view orbit_view).each do |engine|
  require "imagine-#{engine}"
end
