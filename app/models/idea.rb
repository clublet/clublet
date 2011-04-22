class Idea < ActiveRecord::Base
  belongs_to :club

  validates_presence_of :title, :description
  validates_numericality_of :club_id
end
