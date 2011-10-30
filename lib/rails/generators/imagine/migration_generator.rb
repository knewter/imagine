require 'rails/generators'
require 'rails/generators/migration'

module Imagine

  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end

    def self.next_migration_number(dirname) #:nodoc:
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end

    def create_migration_file
      f = File.join(File.dirname(__FILE__), 'templates', 'migration.rb')
      migration_template f, 'db/migrate/create_imagine_tables.rb'
    end

  end

end
