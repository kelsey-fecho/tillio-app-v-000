class Clipping < ActiveRecord::Base
  belongs_to :garden
  belongs_to :plant

  validates :garden_id, presence: true
  validates :plant_id, presence: true
end
