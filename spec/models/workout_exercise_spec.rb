require 'rails_helper'

RSpec.describe WorkoutExercise, type: :model do
  it { should belong_to(:workout) }
  it { should belong_to(:exercise) }
end
