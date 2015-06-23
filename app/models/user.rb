class User < ActiveRecord::Base
  has_secure_password
  validates :email, :username, uniqueness: true
end
