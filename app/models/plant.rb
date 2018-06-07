class Plant < ApplicationRecord
  has_many :clippings
  has_many :users, through: :clippings
end
