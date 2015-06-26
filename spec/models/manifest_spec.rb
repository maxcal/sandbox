require 'rails_helper'

RSpec.describe Manifest, type: :model do
  it { should belong_to :activity }
  it { should belong_to :identity }
end
