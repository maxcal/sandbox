class Organization < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :users
  accepts_nested_attributes_for :users, allow_destroy: true, reject_if: :all_blank
end
