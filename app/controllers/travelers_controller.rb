class TravelersController < ApplicationController
  http_basic_authenticate_with name: "agente", password: "123123"

  def home
  end

  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.new(traveler_params)
    if @traveler.save
      handle_promotional_cards!(@traveler,params) # TO-DO handle validation errors when creating promotional cards!
      redirect_to travelers_path
    else
      render "new"
    end
  end

  def index
    @travelers = Traveler.all
  end

  def show
  end

  private

  def handle_promotional_cards!(traveler, params)
    promotional_cards_params.each do |card_name, card_number|
      traveler.promotional_cards.create(card_name: card_name, card_number: card_number)
    end
  end

  def traveler_params
      params.require(:traveler).permit(:full_name, :identity_number, :phone_number, :address)
  end

  def promotional_cards_params
    params.require(:promotional_cards).permit(PromotionalCard.promotional_cards_list.keys)
  end
end
