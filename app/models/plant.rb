class Plant < ActiveRecord::Base
  has_many :clippings
  has_many :users, through: :clippings

  validates :name, presence: true
end
