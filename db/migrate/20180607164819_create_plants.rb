class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :kind
      t.integer :zone
      t.string :height
      t.string :bloom_time
      t.string :flower_color
      t.string :light
      t.string :drainage
      t.string :growth_rate
      t.string :water
      t.string :maintenance
      t.string :susceptibility
      t.string :description
      t.string :landscape_categories

      t.timestamps
    end
  end
end
