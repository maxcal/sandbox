# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :child do
    parent nil
  end

end
