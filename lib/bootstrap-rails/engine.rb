require "bootstrap-rails/nested_builder"
require "bootstrap-rails/helper"
require "bootstrap-rails/breadcrumb"
require "bootstrap-rails/form_inputs/string_input"
require "bootstrap-rails/form_inputs/text_input"
require "bootstrap-rails/form_inputs/collection_input"
require "bootstrap-rails/form_inputs/numeric_input"
require "bootstrap-rails/form_inputs/file_input"
module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootstrap_helper.view_helpers" do
          ActionView::Base.send :include, Bootstrap::Helper
      end
      
      config.to_prepare do
        ApplicationController.send :include, Bootstrap::Breadcrumb
      end
           
    end
  end
end