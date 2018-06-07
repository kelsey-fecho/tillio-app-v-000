class Plant < ActiveRecord::Base
  has_many :clippings
  has_many :users, through: :clippings
end
