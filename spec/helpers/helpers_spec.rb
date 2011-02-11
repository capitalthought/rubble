require "spec_helper"

describe "Rubble::Helpers" do
  include Rubble::Helpers
  
  before(:all) do
    ApplicationHelper.send(:include, Rubble::Helpers)
  end
  
  describe "#stylesheets_for_path" do
    
    it "should render stylesheet link tags for stylesheets passed in" do
      controller.controller_path = "foo"
      controller.action_name = "bar"
      output = stylesheets_for_path ['foo']
      output.should =~ /foo.css/
    end
  end
end