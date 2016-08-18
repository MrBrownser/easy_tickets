class AddTravelerIdToEarlyBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :early_bookings, :traveler_id, :integer
  end
end
