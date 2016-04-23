class Traveler < ActiveRecord::Base
  has_many :promotional_cards, dependent: :destroy
end
