# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Child, type: :model do
  it { should belong_to :parent }
  it { should have_many :skills }
end
