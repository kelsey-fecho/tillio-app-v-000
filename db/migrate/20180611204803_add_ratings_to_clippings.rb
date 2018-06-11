class AddRatingsToClippings < ActiveRecord::Migration[5.2]
  def change
    add_column :clippings, :rating, :integer
  end
end
