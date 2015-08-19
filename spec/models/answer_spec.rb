require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should belong_to :user }
  it { should belong_to(:answerable) }
  it { should validate_presence_of :text }
end
