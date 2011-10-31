#!/usr/bin/env rake
begin
  require 'bundler/setup'
  require 'bundler/gem_tasks'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'
require 'rspec/core/rake_task'
require 'yard'

desc 'run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb"
end

desc 'run specs for travis'
task :travis  do
  unless ENV['RAILS_ENV'] == 'test_mongoid'
    Rake::Task["app:db:create"].invoke
    Rake::Task["app:db:schema:load"].invoke
  end
  Rake::Task["spec"].invoke
end

YARD::Rake::YardocTask.new do |t|
  t.files   = [ 'lib/**/*.rb', 'app/**/*.rb', 'plugins/**/*.rb' ]
  t.options = []
end
YARD::Rake::YardocTask.new 'yard:changed' do |t|
  t.files   = `git status | grep '.rb' | grep modified | grep -v yard | cut -d' ' -f4`.split
  t.options = []
end

task :default => :spec
