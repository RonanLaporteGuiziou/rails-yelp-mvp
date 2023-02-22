class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATING }
  # validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true }
end
