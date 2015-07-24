class Marriage < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :users, length: { minimum: 2, maximum: 2 }
end
