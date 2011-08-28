%w(engine plugins plugin).each do |lib|
  require "imagine/#{lib}"
end

module Imagine
end
