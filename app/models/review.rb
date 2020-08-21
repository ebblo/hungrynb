class Review < ApplicationRecord
  belongs_to :offer

  validates :content, length: { minimum: 20 }
end
