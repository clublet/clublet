require 'spec_helper'

describe Club do
  before do
    @club = Factory.create(:club)
  end

  # presence_of
  %w{name city country}.each do |field|
    it "errors if #{field} is nil" do
      @club.update_attributes(field.to_sym => nil)
      @club.should have(1).error_on(field.to_sym)
    end
  end

end
