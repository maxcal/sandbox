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

FactoryGirl.define do
  factory :skill do
    child nil
skill_type "MyString"
  end

end
