class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|

      t.timestamps null: false
    end
  end
end
