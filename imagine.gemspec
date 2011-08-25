# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "imagine/version"

Gem::Specification.new do |s|
  s.name        = "imagine"
  s.version     = Imagine::VERSION
  s.authors     = ["Josh Adams"]
  s.email       = ["josh@isotope11.com"]
  s.homepage    = ""
  s.summary     = %q{imagine is a mountable rails engine for dropping a photo gallery into your application.}

  s.rubyforge_project = "imagine"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_development_dependency "rake", "~> 0.9.2"
end
