# == Schema Information
#
# Table name: parents
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Parent < ActiveRecord::Base
  has_many :children

  def self.with_skill skill_type
    joins(children: [:skills]).where(skills: { skill_type: skill_type } )
  end
end
