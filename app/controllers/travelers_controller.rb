class TravelersController < ApplicationController
  def home
  end

  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.new(traveler_params)
    if @traveler.save
      redirect_to @traveler
    else
      render "new"
    end
  end

  def show
  end

  private

  def traveler_params
      params.require(:traveler).permit(:full_name, :identity_number, :phone_number, :address)
  end
end
