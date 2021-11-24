class OffersController < ApplicationController
  def index
    @offers = policy_scope(Offer).order(created_at: :desc)
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def new
    @offer = Transaction.find(params[:id])
    authorize @offer
  end

  def create
    authorize @offer
  end
end
