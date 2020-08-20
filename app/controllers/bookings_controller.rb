class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(user: current_user, offer: @offer)
    if @booking.save
      redirect_to dashboard_path
    else 
      redirect_to new_user_session_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end
    
end
