class Rep < ApplicationRecord
  belongs_to :exercise
  validates :number, :date, presence: true
end
