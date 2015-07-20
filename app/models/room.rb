class Room < ActiveRecord::Base
  has_many :reservations
end
