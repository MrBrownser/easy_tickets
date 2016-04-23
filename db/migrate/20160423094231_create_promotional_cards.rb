class CreatePromotionalCards < ActiveRecord::Migration
  def change
    create_table :promotional_cards do |t|
      t.string :card_name
      t.string :card_number
      t.timestamps null: false
    end
  end
end
