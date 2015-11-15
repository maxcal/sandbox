# == Schema Information
#
# Table name: parents
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Parent, type: :model do
  it { should have_many :children }

  describe '.with_skill' do
    let!(:parent) { Parent.create }
    let!(:child) { Child.create(parent: parent) }
    before do
      child.skills << Skill.create(skill_type: 'sneaking')
    end
    it "includes a parent with a child with the skill" do
      expect(Parent.with_skill('sneaking')).to include parent
    end
    it "does not include others" do
      parent2 = Parent.create
      parent2.children << Child.create
      parent2.children.first.skills <<  Skill.create(skill_type: 'procastination')
      expect(Parent.with_skill('sneaking')).to_not include parent2
    end
  end
end
