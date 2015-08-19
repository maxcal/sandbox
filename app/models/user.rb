class User < ActiveRecord::Base
  has_many :answers
  has_many :assignments
  has_many :lessons, through: :assignments
end
