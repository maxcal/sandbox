class Activity < ActiveRecord::Base

  belongs_to :user
  has_one :link
  has_many :manifests
  has_many :identities, through: :manifests

end