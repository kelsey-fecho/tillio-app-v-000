class Garden < ActiveRecord::Base
  belongs_to :user
  has_many :clippings
  has_many :plants, through: :clippings
end
