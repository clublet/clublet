require 'spec_helper'

describe Meeting do
  before do
    @meeting = Factory.create(:meeting)
  end

  it "should be valid" do
    @meeting.should be_valid
  end

  # presence_of
  %w{start end}.each do |field|
    it "errors if #{field} is nil" do
      @meeting.update_attributes(field.to_sym => nil)
      @meeting.should have(1).error_on(field.to_sym)
    end
  end

  #numericality_of
  numbers = %w{club_id}
  numbers.each do |field|
    it "errors if #{field} is not an integer" do
      @meeting.update_attributes(field.to_sym => "string")
      @meeting.should have(1).error_on(field.to_sym)
    end
  end


end
