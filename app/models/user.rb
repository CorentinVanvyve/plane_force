class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :planes
         has_many :bookings
         validates :first_name, :username, :last_name, :email, :password, presence: true

         has_one_attached :photo
end
