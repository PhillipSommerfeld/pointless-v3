class TransactionsController < ApplicationController
    before_action :set_transaction, only: [:show, :edit, :update, :destroy]

#Basic Crud Actions
  def index
    @transactions = policy_scope(Transaction)
  end

  def show
    authorize @transaction
  end

  def new
    @transaction = Transaction.new
    authorize @transaction
  end

  def edit
    authorize @transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    authorize @transaction
  end

  def update
    authorize @transaction
  end

  def destroy
    authorize @transaction
    @transaction.destroy
    redirect_to list_path(@transactions.index)
        #maybe redirect somewhere else?
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:offer_id, :user_id, :item_price)
    end
end
