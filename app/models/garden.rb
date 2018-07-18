class Garden < ActiveRecord::Base
  belongs_to :user
  has_many :clippings
  has_many :plants, through: :clippings

  accepts_nested_attributes_for :clippings

  def self.findGardens(id)
    clippings = Clipping.where(plant_id: id)
    gardens = clippings.map do |clipping|
      Garden.find(clipping.garden_id)
    end
  end
  
end
