require 'active_support'

module Rubble
  module Layout
    extend ActiveSupport::Concern
    included do
      ActionController::Base.append_view_path "rubble/views"
      layout "rubble"
    end
  end
end