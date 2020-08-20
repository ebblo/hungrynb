class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(user: current_user, offer: @offer)
    @booking.save!
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end
    
end
