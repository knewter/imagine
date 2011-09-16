require File.expand_path('../lib/imagine/version', __FILE__)

# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name          = "imagine"
  s.version       = ::Imagine.version
  s.description   = "Imagine can be dropped into an app to provide albums and images in your app.  It supports extensions to specify new view styles."
  s.date          = "2011-08-28"
  s.summary       = "Imagine is a mountable image gallery engine for rails 3.1 and later."
  s.email         = "josh@isotope11.com"
  s.homepage      = "http://www.github.com/knewter/imagine"
  s.authors       = ["Josh Adams"]
  s.license       = %q{MIT}
  s.require_paths = %w(lib)

  s.files = Dir["lib/**/*"] + Dir["app/**/*"] + Dir["config/**/*"] + Dir["db/migrate/*"] + Dir["basic_list_view/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  # Imagine
  s.add_dependency 'imagine-basic_list_view', '~> 0.1.0'

  s.add_dependency 'haml-rails'
  s.add_dependency 'dragonfly',        '~> 0.9.0'
  s.add_dependency 'rack-cache',       '>= 0.5.3'

  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "spork"
end
