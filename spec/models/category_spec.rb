require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:exercises) }
  
  it "should have a name if the factory works" do
    category = create(:category, name: "LISS")
    expect(category.name).to eq("LISS")
  end
end
