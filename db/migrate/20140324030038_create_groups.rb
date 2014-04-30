class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.string :name
      t.boolean :visible
    end

    add_index :groups, :user_id

  end
end
