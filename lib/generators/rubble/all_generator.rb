module Rubble
  class AllGenerator < Rails::Generators::Base
    desc "This generator copies the rubble views and scss files into your application"      
    def copy_all
      generate("rubble:sass")
      generate("rubble:views")
    end
          
  end
end