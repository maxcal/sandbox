require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'nested user validations' do
    let(:user_attributes){{
        email: 'yossarian@example.com',
        username: 'yossarian',
        password: 'ohgodidontwanttodie',
        password_confirmation: 'ohgodidontwanttodie',
        usertype: 2
    }}

    specify 'using a validation on users.organisation with nested_attributes_for does not work' do
      org = Organization.new(
          name: 'M & M Enterprises',
          users_attributes: [user_attributes]
      )
      org.valid?
      expect(org.errors["users.organization"]).to include "can't be blank"
    end

    it 'works if we create the org and user in separate steps' do
      org = Organization.create(name: 'The Syndicate')
      user = org.users.build(user_attributes)
      user.valid?
      expect(user.valid?).to be_truthy
    end
  end
end
