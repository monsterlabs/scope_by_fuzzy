module ScopeByFuzzy
  def enable_activerecord
    return if ActiveRecord::Base.respond_to? :scope_by_soundex_matcher and ActiveRecord::Base.respond_to? :scope_by_difference_matcher
    require 'scope_by_fuzzy/named_scope'
    ::ActiveRecord::Base.send :include, ScopeByFuzzy::NamedScope
  end
end
   
if defined? Rails
  include ScopeByFuzzy
  ScopeByFuzzy.enable_activerecord if defined? ActiveRecord
end
