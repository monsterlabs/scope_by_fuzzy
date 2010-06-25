require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "pg_scope_by_soundex"
    gem.summary = %Q{This gem provides the soundex and difference postgresql functions to determine similarities and distance between strings}
    gem.description = %Q{The pg_scope_by_soundex gem uses the set of functions of contrib/fuzzystringmatching for PostgreSQL.}
    gem.email = "alex@monsterlabs.com.mx"
    gem.homepage = "http://github.com/alecz/pg_scope_by_soundex"
    gem.authors = ["Alejandro Juarez"]
    gem.files =  FileList["[A-Z]*(.rdoc)", "{generators,lib}/**/*", "init.rb"], "LICENSE", "README"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

