require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :username }
  it { should respond_to :password }
  it { should respond_to :password_confirmation }
  it { should belong_to :organization }

  let(:valid_attributes) {{
      email: 'test@example.com',
      username: 'testy',
      password: 'abcd1234',
      password_confirmation: 'abcd1234'
  }}

  it 'validates the presence of org. if the user type is not 1' do
    user = User.new(valid_attributes.merge(usertype: 2))
    user.valid?
    expect(user.errors.messages).to have_key :organization
  end

  it 'allows an user type 1 with an org' do
    user = User.new(valid_attributes.merge(usertype: 2))
    user.organization = Organization.create(name: 'M & M Enterprises')
    user.valid?
    expect(user.errors["organization"]).to_not include "can't be blank"
  end

  it 'does not validate the presence of org. if the usertype is 1' do
    user = User.new(valid_attributes.merge(usertype: 1))
    user.valid?
    expect(user.errors.messages).to_not have_key :organization
  end
end
