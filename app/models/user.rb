class User < ActiveRecord::Base
  has_secure_password

  has_many :clippings
  has_many :plants, through: :clippings

  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: {minimum: 6}

  def self.auth_error(user, info)
    if info[:user]
      local_auth_error(user, info)
    else
      omni_auth_error(user, info)
    end
  end

  def self.omni_auth_error(user, info)
    if !user
      "Email does not match existing user"
    end
  end

  def self.local_auth_error(user, info)
    if info[:user][:email].blank? || info[:user][:password].blank?
      "Fields can't be left blank"
    elsif !user
      "Email does not match existing user"
    elsif !user.authenticate(info[:user][:password])
      "Password is not correct"
    end
  end
end
