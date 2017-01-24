FactoryGirl.define do
  factory :user do
    provider "google_oauth2"
    name "Lucy Fox"
    uid "112652673845890873859"
    oauth_token "12345"
    oauth_expires_at 2.days.from_now
  end

  factory :category do
    name "LISS"
  end

  factory :exercise do
    name "walk"
    max_weight 0
    category
  end

  factory :workout do
    guide 1
    week 1
    type "resistance"
  end

  factory :workout_exercise do
    exercise
    workout
  end
end
