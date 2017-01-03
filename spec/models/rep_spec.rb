require 'rails_helper'

RSpec.describe Rep, type: :model do
  it { should belong_to(:exercise) }
end
