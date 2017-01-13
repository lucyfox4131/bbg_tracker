class Rep < ApplicationRecord
  belongs_to :exercise
  belongs_to :user
  validates :number, :date, presence: true
end
