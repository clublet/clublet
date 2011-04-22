class AddTimeZoneToClub < ActiveRecord::Migration
  def self.up
    add_column :clubs, :timezone, :string
  end

  def self.down
    remove_column :clubs, :timezone
  end
end
