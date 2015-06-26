class Identity < ActiveRecord::Base

  belongs_to :user
  has_many :manifests
  has_many :activities, through: :manifests

end