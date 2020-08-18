class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :offers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  ### access offers as a guest: @user.bookings[index].offers ("through" path removed, so you have to access it via bookings first)
  ### access offers as a host:  @user.offers

  ####### add this line again once the forms have been added in the views
  # validates :first_name, :last_name, :phone_number, :address, presence: true
end
