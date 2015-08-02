require 'rails_helper'

RSpec.describe State, type: :model do
   it { should validate_length_of(:state_code).is_equal_to(2) }
   it { should validate_uniqueness_of(:state_code) }
end
