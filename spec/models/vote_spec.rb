require 'spec_helper'

describe Vote do
  before do
    @vote = Factory.create(:vote)
  end

  it "should be valid" do
    @vote.should be_valid
  end

end
