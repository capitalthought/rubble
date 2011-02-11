module Rubble
  class InstallSassGenerator < Rails::Generators::Base
    desc "Installs the Rubble SASS files into your application"

    source_root File.expand_path('../../../..', __FILE__)

    def copy_all
      directory 'rails/app/sass', "app/sass"
      directory 'rails/rubble/sass', "rubble/sass"
    end
  end
end