class TransactionsController < ApplicationController
    before_action :set_transaction, only: [:show, :edit, :update, :destroy]

#Basic Crud Actions
  def index
    authorize @transaction
    @user = User.find(params[:user_id])
    @transactions = @user.transactions
  end

  def show
  end

  def new
    @transaction = Transaction.new
    #@transaction = Offer.find(params[:id])
    authorize @transaction
  end

  def edit
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.offer = @offer
    if @transaction.save
      redirect_to offers_path
    end
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

    def transaction_params
      params.require(:transaction).permit(:offer_id, :user_id, :item_price)
    end
end
