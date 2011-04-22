class User < ActiveRecord::Base
  has_many :authentications
  has_many :memberships
  has_many :clubs, :through => :memberships

  validates_presence_of :name

  def self.from_auth(auth)
    auth = Authentication.find_by_auth(auth)

  end
end
