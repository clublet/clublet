require 'spec_helper'

describe Authentications::Twitter do
  subject{ Factory.build(:twitter_auth) }

  it 'should require access token' do
    subject.access_token = nil
    subject.should have_at_least(1).errors_on(:access_token)
  end

  it 'should require access secret' do
    subject.access_secret = nil
    subject.should have_at_least(1).errors_on(:access_secret)
  end
end
