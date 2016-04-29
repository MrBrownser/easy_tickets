class Traveler < ActiveRecord::Base
  has_many :promotional_cards, dependent: :destroy
  has_many :early_bookings, dependent: :destroy
end
