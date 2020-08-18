class OffersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.save
    redirect_to offer_path(@offer)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :price, :category, :description, :date)
  end
end
