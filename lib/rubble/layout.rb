module Rubble
  def Rubble.include_layout
    ActionController::Base.append_view_path "rubble/views"
  end
end