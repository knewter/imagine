# Encoding: UTF-8

Gem::Specification.new do |s|
  s.name              = %q{imagine-orbit_view}
  s.version           = %q{0.1.8}
  s.summary           = %q{Orbit slider view for Imagine}
  s.description       = %q{A jquery slider album view for Imagine.  Uses orbit.}
  s.date              = %q{2011-09-29}
  s.email             = %q{josh@isotope11.com}
  s.homepage          = %q{http://github.com/knewter/imagine}
  s.rubyforge_project = %q{imagine}
  s.authors           = ['Josh Adams']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.files             = Dir["app/**/*"] + [
    'imagine-orbit_view.gemspec',
    'lib/imagine-orbit_view.rb'
  ] 
end
