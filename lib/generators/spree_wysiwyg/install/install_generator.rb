module SpreeWysiwyg
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require admin/spree_wysiwyg\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require admin/spree_wysiwyg\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
