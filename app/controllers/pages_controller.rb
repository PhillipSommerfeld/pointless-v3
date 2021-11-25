class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @transactions = current_user.transactions
    @offers = Offer.all
  end
end
