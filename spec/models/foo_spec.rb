require 'rails_helper'

RSpec.describe Foo, type: :model do

  let(:foo) { build(:foo) }
  it { should validate_presence_of :state }

  describe '.state_code' do
    it 'returns the state code' do
      expect(foo.state_code).to eq 'AZ'
    end
  end

  describe '.state_code=' do

    let!(:vt) { State.create(state_code: 'VT') }

    it 'allows you to set the state with a string' do
      foo.state_code = 'VT'
      expect(foo.state).to eq vt
    end
  end

end
