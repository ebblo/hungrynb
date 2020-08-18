class OffersController < ApplicationController
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

    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render "edit"
    end
  end

  def destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :price, :category, :description, :date)
  end
end
