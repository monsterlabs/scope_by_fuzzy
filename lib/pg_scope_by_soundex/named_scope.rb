module PgScopeBySoundex
  module NamedScope
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods

      # scope_by_soundex_matcher
      #
      # Example:
      # class Person < ActiveRecord::Base
      #     scope_by_soundex_matcher find_by_fullname, :fields => [:firstname, :lastname]
      # end
      # Person.find_by_fullname 'Alejandro'
      def scope_by_soundex_matcher(method_name, options={})
        class_eval do
          sql = options[:fields].collect { |field| "soundex(#{field}) = soundex(:q)"}.join(' OR ')
          scope method_name.to_sym, lambda {|string| where(sql, :q => string) }
        end
      end

      # scope_by_difference_matcher
      #
      # Example:
      # class Person < ActiveRecord::Base
      #     scope_by_difference_matcher find_by_fullname, :fields => [:firstname, :lastname]
      #       OR
      #     scope_by_difference_matcher find_by_fullname, :fields => [:firstname, :lastname], :position => 4, :operator => '>'
      #       OR
      #     scope_by_difference_matcher find_by_fullname, :by_sql => 'difference(firstname, :q)  > 3 OR difference(:lastname, :q) > 4"
      # end
      # Person.find_by_fullname 'Alejandro'
      def scope_by_difference_matcher(method_name, options={})
        class_eval do
          if options[:by_sql].nil?
            options[:position] ||= 3
            options[:operator] = '>'
            sql = options[:fields].collect { |field|"difference(#{field}, :q) #{options[:operator]} #{options[:position]}" }.join(' OR ')
          else
            sql = options[:by_sql]
          end
          scope method_name.to_sym, lambda {|string| where(sql, :q => string) }
        end
      end

      # TODO: The following PostgreSQL functions are not implemented: dmetaphone_alt, dmetaphone, text_soundex, metaphone and levenshtein.
    end
  end
end