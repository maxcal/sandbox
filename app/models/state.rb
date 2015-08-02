class State < ActiveRecord::Base
  validates_uniqueness_of :state_code
  validates_length_of :state_code, is: 2
end
