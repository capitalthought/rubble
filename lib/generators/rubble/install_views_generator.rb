module Rubble
  class InstallViewsGenerator < Rails::Generators::Base
    desc "Installs the Rubble views files into your application."
      
    source_root File.expand_path('../../../..', __FILE__)
      
    def copy_all
       directory 'rails/app/views', "app/views"
       directory 'rails/app/views', "rubble/views"
       directory 'rails/app/views', "rubble/views"
    end
  end
end