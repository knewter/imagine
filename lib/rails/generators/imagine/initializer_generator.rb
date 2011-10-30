require 'rails/generators'

module Imagine

  class InitializerGenerator < Rails::Generators::Base

    def filename
      File.join(File.dirname(__FILE__), 'files', 'imagine.rb')
    end

    def create_initializer_file
      create_file 'config/initializers/imagine.rb', File.read(filename)
    end

  end

end
