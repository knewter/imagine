this_dir = File.dirname(__FILE__)

YARD::Templates::Engine.register_template_path(this_dir + '/templates')
Dir[this_dir + '/handlers/*.rb'].each do |file|
  require File.expand_path(file)
end
YARD::Parser::SourceParser.parser_type = :ruby18

version = ENV['IMAGINE_VERSION']
IMAGINE_VERSION = if version
  puts "Setting the version in the docs to #{version}"
  version
else
  require File.join(this_dir, '/../lib/imagine/version')
  Imagine.version
end
