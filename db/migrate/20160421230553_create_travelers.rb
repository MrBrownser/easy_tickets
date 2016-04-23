class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :full_name
      t.string :identity_number
      t.string :phone_number
      t.string :address
      t.timestamps null: false
    end
  end
end
