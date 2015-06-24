class User < ActiveRecord::Base
  has_secure_password
  validates :email, :username, uniqueness: true
  validates_presence_of :organization, unless: -> { usertype == 1 }
  belongs_to :organization
end