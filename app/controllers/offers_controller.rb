class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  
  def index    
    if params[:query].present?
      sql_query = "users.address ILIKE :query AND offers.date >= :start_date AND offers.date <= :end_date"
      @offers = Offer.joins(:user).where(sql_query, query: "%#{params[:query]}%", start_date: params[:start_date], end_date: params[:end_date])
      @markers = @offers.map do |offer|
        {
          lat: offer.user.latitude,
          lng: offer.user.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { user: offer.user }),
          image_url: helpers.asset_url('/Users/loicebbing/code/ebblo/rbnb/app/assets/images/pasta.jpg')
        }
      end
    else
      @offers = Offer.all
    end
  end

  def show
    @user = @offer.user
    @users = [@user]
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('/Users/loicebbing/code/ebblo/rbnb/app/assets/images/pasta.jpg')
      }
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @user = current_user
    @offer.user = @user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render "edit"
    end
  end

  def destroy
    @offer.destroy
    redirect_to dashboard_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :price, :category, :description, :date, :photo)
  end
end
