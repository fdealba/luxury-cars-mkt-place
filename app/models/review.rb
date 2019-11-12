class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :car
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
