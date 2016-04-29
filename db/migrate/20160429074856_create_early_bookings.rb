class CreateEarlyBookings < ActiveRecord::Migration
  def change
    create_table :early_bookings do |t|
      t.string :origin
      t.string :destination
      t.datetime :departure_date
      t.datetime :date_back
      t.string :departure_train
      t.string :back_train
      t.string :departure_class
      t.string :back_class
      t.integer :departure_people
      t.integer :back_people
      t.integer :n_adults
      t.integer :n_kids
      t.boolean :promo_ferroviario
      t.boolean :promo_pensionista
      t.boolean :promo_tmesa
      t.boolean :promo_fam_num
      t.boolean :promo_plus
      t.boolean :promo_other
      t.float :departure_fare
      t.float :back_fare
      t.string :payment_method
      t.timestamps null: false
    end
  end
end
