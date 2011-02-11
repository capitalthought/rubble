module Rubble
  class SassGenerator < Rails::Generators::Base
    desc "This generator copies the rubble scss files into your application"
      
    source_root File.expand_path('../../../../app/sass', __FILE__)
      
    def copy_all
       directory '.', "rubble/sass"
    end
          
  end
end