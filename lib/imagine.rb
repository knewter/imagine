# Prepare plugin system
%w(engine plugins plugin).each do |lib|
  require "imagine/#{lib}"
end

module Imagine
  class << self
    def engines
      @engines ||= []
    end
  end
end

# Require the built in engines
%w(basic_list_view).each do |engine|
  require "imagine-#{engine}"
end
