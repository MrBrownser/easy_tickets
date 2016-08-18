class Traveler < ActiveRecord::Base
  has_many :promotional_cards, dependent: :destroy
  accepts_nested_attributes_for :promotional_cards, allow_destroy: true
  has_many :early_bookings, dependent: :destroy
end
