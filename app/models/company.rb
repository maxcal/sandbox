class Company < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :users
end
