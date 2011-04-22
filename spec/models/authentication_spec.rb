require 'spec_helper'

describe Authentication do
  subject{ Factory.build(:authentication) }

  it 'should require a uid' do
    subject.uid = nil
    subject.should have_at_least(1).errors_on(:uid)
  end
end
