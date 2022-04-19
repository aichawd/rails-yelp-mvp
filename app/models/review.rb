class Review < ApplicationRecord
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }, allow_nil: false

  belongs_to :restaurant
end
