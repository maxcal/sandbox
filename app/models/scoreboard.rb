class Scoreboard < ActiveRecord::Base
  belongs_to :user
  has_many :teams
end
