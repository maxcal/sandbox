require 'rails_helper'

RSpec.describe ParentalRelationship, type: :model do
  it { should belong_to(:parent) }
  it { should belong_to(:child) }
end
