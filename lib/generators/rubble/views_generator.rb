module Rubble
  class ViewsGenerator < Rails::Generators::Base
    desc "This generator copies the rubble view files into your application"
      
    source_root File.expand_path('../../../../app/views', __FILE__)
      
    def copy_all
       directory '.', "rubble/views"
    end
          
  end
end