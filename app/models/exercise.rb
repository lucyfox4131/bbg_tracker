class Exercise < ApplicationRecord
  belongs_to :category
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  has_many :reps
  has_many :users, through: :reps
  validates :name, presence: true
end
