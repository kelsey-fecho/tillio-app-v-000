class User < ApplicationRecord
  has_secure_password

  has_many :clippings
  has_many :plants, through: :clippings
end
