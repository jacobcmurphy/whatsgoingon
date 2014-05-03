class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.text :description
    	t.float :latitude
      	t.float :longitude
      	t.integer :group_id
    end
  end
end
