require 'rails_helper'

RSpec.describe Activity, type: :model do
  it { should belong_to :user }
  it { should have_one :link }
  it { should have_many :manifests }
  it { should have_many :identities }
end
