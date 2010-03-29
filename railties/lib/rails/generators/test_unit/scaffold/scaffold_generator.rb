require 'rails/generators/test_unit'
require 'rails/generators/resource_helpers'

module TestUnit
  module Generators
    class ScaffoldGenerator < Base
      include Rails::Generators::ResourceHelpers

      class_option :singleton, :type => :boolean, :desc => "Supply to create a singleton controller"
      check_class_collision :suffix => "ControllerTest"

      def create_test_files
        template 'functional_test.rb',
                 File.join('test/controllers', controller_class_path, "#{controller_file_name}_controller_test.rb")
      end
    end
  end
end
