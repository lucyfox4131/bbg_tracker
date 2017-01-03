FactoryGirl.define do
  factory :category do
    name "LISS"
  end

  factory :exercise do
    name "walk"
    max_weight 0
    category
  end
end
