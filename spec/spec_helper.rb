require 'rubygems'
require 'simplecov'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  # Configure Rails Environment
  test_envs = %w( test test_mongoid )
  unless test_envs.include?(ENV["RAILS_ENV"])
    ENV["RAILS_ENV"] = "test"
  end

  require File.expand_path("../dummy/config/environment.rb", __FILE__)
  require 'rspec/rails'

  case ENV["RAILS_ENV"].to_sym
  when :test
    require 'shoulda-matchers'
  when :test_mongoid
    require 'mongoid-rspec'
  end

  Rails.backtrace_cleaner.remove_silencers!

  # Load support files
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

  RSpec.configure do |config|
    if ENV["RAILS_ENV"] == "test_mongoid"
      config.include Mongoid::Matchers
    else
      config.use_transactional_fixtures = false
    end
  end
end

Spork.each_run do
  require 'factory_girl'
  # This code will be run each time you run your specs.
  FactoryGirl.find_definitions
end
