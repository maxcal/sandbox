require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { create(:user) }
  let(:spouse) { create(:user) }

  it { should have_many :parent_relationships }
  it { should have_many :child_relationships }
  it { should have_many :children }
  it { should have_many :parents }
  it { should have_and_belong_to_many :marriages }
  it { should belong_to :current_marriage }

  describe '#marry' do
    it "returns a Marriage" do
      expect(user.marry(spouse)).to be_a Marriage
    end
  end

  describe "#spouse" do

    let(:ex) { create(:user) }

    before do
      user.marry(ex)
      user.marry(spouse)
    end
    it "gets the spouse User from the current_marriage" do
      expect(user.spouse).to eq spouse
    end
  end

  describe "birth" do
    let(:child) { create(:user) }
    before do
      user.marry(spouse)
      user.birth(child)
    end
    it "makes user parent of the child" do
      expect(child.parents).to include user
      expect(user.children).to include child
    end
    it "makes the users spouse parent of the child" do
      expect(child.parents).to include spouse
      expect(spouse.children).to include child
    end
  end
end
