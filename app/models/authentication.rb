class Authentication < ActiveRecord::Base
  validates_presence_of :uid
end
