require 'rails_helper'

RSpec.describe Category, type: :model do
  # relationships
  it { should have_many(:exercises) }
  # validations
  it { should validate_presence_of(:name) }
end
