require "spec_helper"

describe StyleGuide::View do
  let(:view) { StyleGuide::View.new(file: nil) }

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
end
