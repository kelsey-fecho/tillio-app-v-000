class Garden < ActiveRecord::Base
  belongs_to :user
  has_many :clippings
  has_many :plants, through: :clippings

  accepts_nested_attributes_for :clippings

  def clipping_attributes=(clipping)
    self.clipping = Clipping.find_or_create_by(id: clipping.id)
    self.clipping.update(clipping)
  end
end
