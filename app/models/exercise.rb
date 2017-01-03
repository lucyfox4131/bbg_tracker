class Exercise < ApplicationRecord
  validates :name, presence: true
  belongs_to :category
  has_many :reps
end
