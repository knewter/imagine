require File.expand_path('../lib/imagine/version', __FILE__)

# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "imagine"
  s.summary = "Imagine is a mountable image gallery engine for rails 3.1 and later."
  s.description = "Imagine can be dropped into an app to provide albums and images in your app.  It supports extensions to specify new view styles."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = ::Imagine.version

  s.add_dependency 'haml-rails'
  s.add_dependency 'dragonfly',        '~> 0.9.0'
  s.add_dependency 'rack-cache',       '>= 0.5.3'

  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "spork"
end
