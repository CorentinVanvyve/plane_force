class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plane
  validates :start_date, :end_date, :price, :comment, presence: true
end
