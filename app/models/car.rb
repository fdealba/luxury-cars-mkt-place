class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :milage, presence: true
  validates :price_per_hour, presence: true
  # validates :plate_number, presence: true
end
