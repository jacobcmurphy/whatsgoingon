class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.text :description
    	t.float :latitude
      	t.float :longitude
      	t.integer :group_id
      	t.datetime :start_time
      	t.datetime :end_time
    end

    add_index :events, :group_id
    add_index :events, :end_time
  end
end
