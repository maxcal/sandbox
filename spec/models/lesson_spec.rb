require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it { should belong_to :school }
  it { should have_many(:goals).class_name('Answer') }
  it { should validate_presence_of :date }
  it { should validate_presence_of :school }
  it { should have_many :assignments }
  it { should have_many(:users).through(:assignments) }

  describe '#given_by?' do

    let(:user) { create(:user) }
    let(:lesson) { create(:lesson, user: user )}


  end
end
