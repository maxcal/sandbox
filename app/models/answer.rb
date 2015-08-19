class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :answerable, polymorphic: true

  validates_presence_of :text
end
