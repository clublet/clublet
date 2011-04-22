class Meeting < ActiveRecord::Base
  belongs_to :club

  validates_presence_of :start, :end
  validates_numericality_of :club_id
end
