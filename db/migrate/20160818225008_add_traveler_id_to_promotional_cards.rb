class AddTravelerIdToPromotionalCards < ActiveRecord::Migration[5.0]
  def change
    add_column :promotional_cards, :traveler_id, :integer
  end
end
