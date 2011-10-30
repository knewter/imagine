source "http://rubygems.org"

gem 'rails', '3.1.0'

gem 'sqlite3'

gem 'jquery-rails'
# To use debugger
#gem 'ruby-debug19', :require => 'ruby-debug'
#gem 'ruby-debug-ide19'

gem 'simplecov', '>= 0.4.0', :require => false, :group => :test
group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem "capybara"
  gem "factory_girl"
  gem "spork"
end

group :test_mongoid do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem "capybara"
  gem "factory_girl"
  gem "spork"
  gem 'mongoid'
  gem 'bson_ext'
  gem 'mongoid-rspec'
end

gemspec
