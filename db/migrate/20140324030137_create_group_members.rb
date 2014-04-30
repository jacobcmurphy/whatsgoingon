class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.integer :group_id
      t.integer :user_id
      t.integer :friend_id
      t.boolean :accepted
    end


    add_index :group_members, :group_id
    add_index :group_members, :user_id
    add_index :group_members, :friend_id
  end
end
