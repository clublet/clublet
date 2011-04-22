class AddUserIdToAuthentications < ActiveRecord::Migration
  def self.up
    add_column :authentications, :user_id, :integer
  end

  def self.down
    remove_column :authentications, :user_id
  end
end
