module Rubble
  class UpgradeAllGenerator < Rails::Generators::Base
    desc "Copies the Rubble views and Rubble SASS files into /rubble"
    def copy_all
      generate("rubble:upgrade_sass")
      generate("rubble:upgrade_views")
    end
  end
end