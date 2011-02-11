module Rubble
  class UpgradeSassGenerator < Rails::Generators::Base
    desc "Copies the Rubble SASS files into /rubble only"

    source_root File.expand_path('../../../..', __FILE__)

    def copy_all
      directory 'rails/rubble/sass', "rubble/sass"
    end
  end
end