class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      sql_query = "item_name ILIKE :query OR description ILIKE :query"
      @offers = policy_scope(Offer).where(sql_query, query: "%#{params[:query]}%").order(created_at: :desc)
    else
      @offers = policy_scope(Offer).order(created_at: :desc)
    end
  end

  # def index
  #   @offers = policy_scope(Offer).order(created_at: :desc)
  # end

  def show
    authorize @offer
    @offer = Offer.find(params[:id])
    @transaction = Transaction.new
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
    authorize @offer
  end

  def update
    @offer.update(offer_params)
    authorize @offer
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    authorize @offer
    @offer.destroy
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:item_name, :price, :photo, :description, :quantity)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
