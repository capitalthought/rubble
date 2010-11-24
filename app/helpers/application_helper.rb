# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_title
    @page_title
  end
  
  def classes_for_body
    body_classes = controller.controller_path.split('/')
    body_classes << controller.action_name
    body_classes << (logged_in? ? 'user' : 'guest')
    
    body_classes.join ' '
  end
  
  def stylesheets_for_path(stylesheets = Array.new)
    cp = controller.controller_path
    
    stylesheets << cp.split('/').first
    stylesheets << cp if cp.split('/').first != cp
    stylesheets << cp + '/' + controller.action_name
    
    stylesheet_link_tag stylesheets.reject { |i| !File.exists? "#{RAILS_ROOT}/public/stylesheets/#{i}.css" }, :cache => true
  end
  
  def logged_in?
    return true
  end
end
