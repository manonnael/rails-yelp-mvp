class Review < ApplicationRecord
  belongs_to :restaurant
  NOTE = [1, 2, 3, 4, 5]

  validates :rating, inclusion: {in: NOTE}, presence: true
  validates :content, presence: true
end
