require "spec_helper"

describe "Rubble::Helpers" do
  include Rubble::Helpers
  
  before(:all) do
    ApplicationHelper.send(:include, Rubble::Helpers)
  end
  before do 
    controller.controller_path = "controller"
    controller.action_name = "action"
  end
  
  describe "#classes_for_body" do
    before do
      @output = classes_for_body
    end
    it "should include the controller name" do
      @output.should =~ /controller/
    end
    it "should include the action name" do
      @output.should =~ /action/
    end
  end
  
  describe "#stylesheets_for_path" do
    context "when the stylesheets exist" do
      before do
        File.stub(:exists?).and_return(true)
        @output = stylesheets_for_path ['foo']
      end
      
      it "should render stylesheet link tags for stylesheets passed in" do
        @output.should =~ /foo.css/
      end
      it "should render stylesheet link tags named for the controller" do
        @output.should =~ /controller.css/
      end
      it "should render stylesheet link tags named for the action" do
        @output.should =~ /action.css/
      end
    end
    context "when the stylesheets do not exist" do
      before do
        File.stub(:exists?).and_return(false)
        @output = stylesheets_for_path ['foo']
      end
      it "should not render stylesheet link tags for stylesheets passed in" do
        @output.should_not =~ /foo.css/
      end
      it "should not render stylesheet link tags named for the controller" do
        @output.should_not =~ /controller.css/
      end
      it "should not render stylesheet link tags named for the action" do
        @output.should_not =~ /action.css/
      end
      
    end
  end
end