class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :title, :price, :category, :description, :date, presence: true
end
