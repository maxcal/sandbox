class Manifest < ActiveRecord::Base

  belongs_to :activity
  belongs_to :identity

end