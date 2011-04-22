class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.integer :club_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
