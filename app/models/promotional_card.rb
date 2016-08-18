class PromotionalCard < ActiveRecord::Base
  belongs_to :traveler

  def self.promotional_cards_list
    {
      tarjeta_dorada: 'Tarjeta Dorada',
      renfe_joven: 'Renfe Joven',
      familia_numerosa: 'Familia Numerosa',
      renfe_tempo: 'Renfe Tempo',
      ferroviario: 'Ferroviario'
    }
  end
end
