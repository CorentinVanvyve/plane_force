class Plane < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, :model, :price_per_hour, :seats, :overview, :address, presence: true
  has_many_attached :photos

end
