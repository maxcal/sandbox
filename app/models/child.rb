# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Child < ActiveRecord::Base
  belongs_to :parent
  has_many :skills
end
