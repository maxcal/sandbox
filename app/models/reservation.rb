class Reservation < ActiveRecord::Base
  belongs_to :room
end
