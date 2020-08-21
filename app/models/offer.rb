class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy

  validates :title, :price, :category, :description, :date, presence: true

  CATEGORIES = ["Français", "Italien", "Asiatique", "Indien", "Africain", "Libanais", "Espagnol", "Cuisine du monde", "Suisse"]

  has_one_attached :photo
end
