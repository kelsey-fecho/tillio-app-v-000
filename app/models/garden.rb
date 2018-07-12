class Garden < ActiveRecord::Base
  belongs_to :user
  has_many :clippings
  has_many :plants, through: :clippings

  accepts_nested_attributes_for :clippings

end
