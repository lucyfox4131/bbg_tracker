require 'rails_helper'

RSpec.describe Exercise, type: :model do
  # relationships
  it { should belong_to(:category) }
  it { should have_many(:reps) }
  it { should have_many(:users) }
  # validations
  it { should validate_presence_of(:name) }
end
