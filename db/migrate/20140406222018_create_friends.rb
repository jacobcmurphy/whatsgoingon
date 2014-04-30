class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :accepted
      t.timestamps
    end

    add_index :friends, :user_id
    add_index :friends, :friend_id

  end
end
