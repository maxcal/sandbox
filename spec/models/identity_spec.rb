require 'rails_helper'

RSpec.describe Identity, type: :model do
  it { should belong_to :user }
  it { should have_many :manifests }
  it { should have_many :activities }
end
