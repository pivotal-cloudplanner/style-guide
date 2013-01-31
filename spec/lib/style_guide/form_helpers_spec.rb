require "spec_helper"

class StyleGuideTestView < StyleGuide::View
  include StyleGuide::FormHelpers
end

describe StyleGuide::FormHelpers do
  let(:view) { StyleGuideTestView.new(file: nil) }

  describe "#protect_against_forgery?" do
    subject { view.protect_against_forgery? }

    it { should == false}
  end

  describe "#controller" do
    subject { view.controller }

    it "returns an object with an action_name attribute" do
      subject.action_name.should == nil
    end
  end

  describe "#some_route_path" do
    subject { view.some_route_path }

    it { should == "/" }
  end

  describe "#some_route_url" do
    subject { view.some_other_random_route_url }

    it { should == "/" }
  end
end
