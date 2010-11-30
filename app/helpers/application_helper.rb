# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def self.included(base)
    base.include RubbleHelper
  end
end
