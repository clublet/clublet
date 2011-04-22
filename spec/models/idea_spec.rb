require 'spec_helper'

describe Idea do
  before do
    @idea = Factory.create(:idea)
  end

  it "should be valid" do
    @idea.should be_valid
  end

  # presence_of
  %w{title description}.each do |field|
    it "errors if #{field} is nil" do
      @idea.update_attributes(field.to_sym => nil)
      @idea.should have(1).error_on(field.to_sym)
    end
  end

  #numericality_of
  numbers = %w{club_id}
  numbers.each do |field|
    it "errors if #{field} is not an integer" do
      @idea.update_attributes(field.to_sym => "string")
      @idea.should have(1).error_on(field.to_sym)
    end
  end
end
