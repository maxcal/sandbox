class Lesson < ActiveRecord::Base
  belongs_to :school
  has_many :goals, as: :answerable, class_name: 'Answer'
  has_many :assignments
  has_many :users, through: :assignments

  validates_presence_of :date, :school

  def given_by?(user)
    # we re-write this so that it does not
    # pluck the user records out of the DB.
    self.users.where(id: user.id).any?
  end
end
