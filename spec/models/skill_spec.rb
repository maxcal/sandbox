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

require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should belong_to :child }
end
