class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  # validates :date, :accepted, presence: true
end
