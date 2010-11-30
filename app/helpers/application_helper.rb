# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # include helpers for the the Rubble framework
  def self.included(base)
    base.send(:include, RubbleHelper)
  end
end
