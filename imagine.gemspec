# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "imagine"
  s.summary = "Insert Imagine summary."
  s.description = "Insert Imagine description."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"

  s.add_dependency 'haml-rails'
  s.add_dependency 'dragonfly',        '~> 0.9.0'
  s.add_dependency 'rack-cache',       '>= 0.5.3'

  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "spork"
end
