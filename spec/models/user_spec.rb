require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :identities }
  it { should have_many :activities }

  describe '#activities' do

    let(:user){ User.create }
    let!(:activity){ user.activities.create}

    it 'should not cause an error' do
      expect {
        user.activities
      }.to_not raise_error
    end

    it 'should provide the activities' do
      expect(user.activities.first).to eq activity
    end
  end
end
