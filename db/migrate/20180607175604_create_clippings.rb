class CreateClippings < ActiveRecord::Migration[5.2]
  def change
    create_table :clippings do |t|
      t.integer :user_id
      t.integer :plant_id
      t.timestamps
    end
  end
end
