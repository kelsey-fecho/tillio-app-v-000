class RemoveColumnsFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :height
    remove_column :plants, :flower_color
    remove_column :plants, :bloom_time
    remove_column :plants, :drainage
    remove_column :plants, :growth_rate
    remove_column :plants, :maintenance
    remove_column :plants, :susceptibility
  end
end
