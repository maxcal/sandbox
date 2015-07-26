require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should validate_uniqueness_of :name }
  it { should have_many :users }
end
