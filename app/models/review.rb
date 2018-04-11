class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 4, 5]
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true
end
