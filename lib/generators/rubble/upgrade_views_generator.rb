module Rubble
  class UpgradeViewsGenerator < Rails::Generators::Base
    desc "Copies the Rubble views files into /rubble only"
      
    source_root File.expand_path('../../../..', __FILE__)
      
    def copy_all
       directory 'rails/app/views', "rubble/views"
       directory 'rails/rubble/views', "rubble/views"
    end
  end
end