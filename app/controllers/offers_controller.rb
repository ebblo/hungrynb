class OffersController < ApplicationController
  before_action :set_offer, only: [ :show, :edit, :update, :destroy ]
  
  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @user = current_user
    @offer.user = @user
    if @offer.save!
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
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :price, :category, :description, :date)
  end
end
