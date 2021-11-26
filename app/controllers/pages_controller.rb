class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @offers = Offer.where(user: current_user)
  end

  def aboutus
    @nfteam = ["Jan Phillip Sommerfeld", "Alex Paul", "Nuno Costa", "Tiago Collot"]
  end
end
