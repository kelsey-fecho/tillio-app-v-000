class CreateClippings < ActiveRecord::Migration[5.2]
  def change
    create_table :clippings do |t|
      t.integer :garden_id
      t.integer :plant_id
      t.timestamps
    end
  end
end
