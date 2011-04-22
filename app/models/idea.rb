class Idea < ActiveRecord::Base
  acts_as_voteable

  belongs_to :club

  validates_presence_of :title, :description
  validates_numericality_of :club_id
end
