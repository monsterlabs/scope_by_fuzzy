# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "scope_by_fuzzy"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alejandro Juarez"]
  s.date = "2012-09-28"
  s.description = "The scope_by_fuzzy gem uses the set of functions of contrib/fuzzystringmatching for PostgreSQL."
  s.email = "alex@monsterlabs.com.mx"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "init.rb",
    "lib/generators/scope_by_fuzzy_install/USAGE",
    "lib/generators/scope_by_fuzzy_install/scope_by_fuzzy_install_generator.rb",
    "lib/generators/scope_by_fuzzy_install/templates/migration.rb",
    "lib/scope_by_fuzzy.rb",
    "lib/scope_by_fuzzy/named_scope.rb"
  ]
  s.homepage = "http://github.com/monsterlabs/scope_by_fuzzy"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "This gem provides the soundex and difference postgresql functions to determine similarities and distance between strings"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

