module PgScopeBySoundex
  def enable_activerecord
    return if ActiveRecord::Base.respond_to? :scope_by_soundex_matcher and ActiveRecord::Base.respond_to? :scope_by_difference_matcher
    require 'pg_scope_by_soundex/named_scope'
    ::ActiveRecord::Base.send :include, PgScopeBySoundex::NamedScope
  end
end
   
if defined? Rails
  include PgScopeBySoundex
  PgScopeBySoundex.enable_activerecord if defined? ActiveRecord
end
