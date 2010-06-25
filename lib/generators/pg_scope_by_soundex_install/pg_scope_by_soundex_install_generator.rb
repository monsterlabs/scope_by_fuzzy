require 'rails/generators/migration'
class PgScopeBySoundexInstallGenerator < Rails::Generators::Base  
  include Rails::Generators::Migration
  
  desc "Generates a migration file to add Fuzzy String Matching functions to your PostgreSQL database."
  
  def self.source_root
    @_source_root = File.expand_path('../templates', __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def copy_migration_template
    migration_template  "migration.rb", "db/migrate/add_pg_scope_by_soundex"
  end
end