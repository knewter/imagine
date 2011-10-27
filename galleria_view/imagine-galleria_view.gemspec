# Encoding: UTF-8

Gem::Specification.new do |s|
  s.name              = %q{imagine-galleria_view}
  s.version           = %q{0.1.9}
  s.summary           = %q{Galleria image gallery view for Imagine}
  s.description       = %q{A jquery slider album view for Imagine.  Uses galleria.}
  s.date              = %q{2011-10-29}
  s.email             = %q{josh@isotope11.com}
  s.homepage          = %q{http://github.com/knewter/imagine}
  s.rubyforge_project = %q{imagine}
  s.authors           = ['Josh Adams']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.files             = Dir["app/**/*"] + [
    'imagine-galleria_view.gemspec',
    'lib/imagine-galleria_view.rb'
  ] 
end
