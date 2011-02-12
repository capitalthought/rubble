module Rubble
  module Helpers
    
    def page_title
      ''
    end
    
    def classes_for_body
      body_classes = controller.controller_path.split('/')
      body_classes << controller.action_name
      body_classes.join ' '
    end

    def stylesheets_for_path(stylesheets = Array.new)
      cp = controller.controller_path
      stylesheets << 'views/' + cp.split('/').first
      stylesheets << 'views/' + cp if cp.split('/').first != cp
      stylesheets << 'views/' + cp + '/' + controller.action_name
      stylesheet_link_tag stylesheets.reject { |i| !File.exists? "#{Rails.root}/public/stylesheets/#{i}.css" }
    end
    
  end
end