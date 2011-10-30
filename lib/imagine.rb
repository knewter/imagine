%w( config engine plugins plugin model_extensions/album model_extensions/image ).each do |lib|
  require "imagine/#{lib}"
end

module Imagine
  class << self
    def configure(options={}, &block)
      @config ||= Imagine::Config.new(options, &block)
    end

    def config
      @config ||= Imagine::Config.new
    end

    def method_missing(meth, *args)
      super unless config.respond_to?(meth)
      config.send(meth, *args)
    end
  end
  class OrmNotSupportedError < StandardError; end
end

Imagine.plugins.each do |plugin|
  require "imagine-#{plugin}"
end
