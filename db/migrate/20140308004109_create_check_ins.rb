class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.integer :user_id
      t.timestamp :time
      t.float :latitude
      t.float :longitude
    end
  end
end
