class Club < ActiveRecord::Base
  has_many :ideas

  validates_presence_of :name, :city, :country
end
