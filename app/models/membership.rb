class Membership < ActiveRecord::Base
  belongs_to :club
  belongs_to :user

  validates_numericality_of :club_id, :user_id
end
