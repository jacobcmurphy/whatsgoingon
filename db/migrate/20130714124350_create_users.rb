class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.text :about
      t.string :image
      t.string :location
      t.float :latitude
      t.float :longitude
      t.boolean :visible
      t.integer :color_status

      t.timestamps
    end
  end
end
