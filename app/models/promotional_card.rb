class PromotionalCard < ActiveRecord::Base
  belongs_to :traveler

  def self.promotional_cards_list
    ['Tarjeta Dorada', 'Renfe Joven', 'Familia Numerosa', 'Renfe Tempo', 'Ferroviario']
  end
end
