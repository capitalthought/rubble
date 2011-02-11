module Rubble
  class InstallAllGenerator < Rails::Generators::Base
    desc "Installs the Rubble views and Rubble SASS files into your application."
    def copy_all
      generate("rubble:install_sass")
      generate("rubble:install_views")
    end
  end
end