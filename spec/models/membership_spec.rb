require 'spec_helper'

describe Membership do
  before do
    @membership = Factory.create(:membership)
  end

  it "should be valid" do
    @membership.should be_valid
  end

  #numericality_of
  numbers = %w{club_id user_id}
  numbers.each do |field|
    it "errors if #{field} is not an integer" do
      @membership.update_attributes(field.to_sym => "string")
      @membership.should have(1).error_on(field.to_sym)
    end
  end
end
