# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  child_id   :integer
#  skill_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ActiveRecord::Base
  belongs_to :child
end
