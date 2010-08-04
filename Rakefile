require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "scope_by_fuzzy"
    gem.summary = %Q{This gem provides the soundex and difference postgresql functions to determine similarities and distance between strings}
    gem.description = %Q{The scope_by_fuzzy gem uses the set of functions of contrib/fuzzystringmatching for PostgreSQL.}
    gem.email = "alex@monsterlabs.com.mx"
    gem.homepage = "http://github.com/monsterlabs/scope_by_fuzzy"
    gem.authors = ["Alejandro Juarez"]
    gem.files =  FileList["[A-Z]*(.rdoc)", "{generators,lib}/**/*", "init.rb"], "LICENSE", "README"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

