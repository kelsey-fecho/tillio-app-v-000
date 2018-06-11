class User < ActiveRecord::Base
  has_secure_password

  has_many :clippings
  has_many :plants, through: :clippings

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: {minimum: 6}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end