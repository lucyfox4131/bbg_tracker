require 'rails_helper'

RSpec.describe Rep, type: :model do
  # relationships
  it { should belong_to(:exercise) }

  # validations
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:date)}
end
