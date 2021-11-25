class TransactionsController < ApplicationController
    before_action :set_transaction, only: [:show, :edit, :update, :destroy]

#Basic Crud Actions
  def index
    @user = User.find(params[:user_id])
    @transactions = @user.transactions
  end

  def show
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @transaction = Transaction.new
    # @transaction = Offer.find(params[:id])
    authorize @transaction
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @transaction = Transaction.new
    authorize @transaction
    @transaction.user = current_user
    @transaction.offer = @offer
    @transaction.item_price = @offer.price
    if @transaction.save
      redirect_to offer_path(@offer)
    else
      render "offer/show"
    end
  end

  def edit
  end


  # def update
  # #Needs to be improved
  # end

  # def destroy
  #   @transaction.destroy
  #   redirect_to list_path(@transactions.index)
  #       #maybe redirect somewhere else?
  # end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end


  def find_offer
    @offer = Offer.find(params[:offer_id])
  end
end
