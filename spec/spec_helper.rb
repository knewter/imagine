require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However, 
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  # Configure Rails Environment

  ENV["RAILS_ENV"] = "test"

  require File.expand_path("../dummy/config/environment.rb", __FILE__)
  require 'rspec/rails'
  begin
    require 'ruby-debug'
  rescue
  end

  Rails.backtrace_cleaner.remove_silencers!

  # Load support files
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

  RSpec.configure do |config|
    config.use_transactional_fixtures = false
  end
end

Spork.each_run do
  require 'factory_girl'
  # This code will be run each time you run your specs.
  FactoryGirl.find_definitions
end
