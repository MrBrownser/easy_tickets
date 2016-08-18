# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160818232908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "early_bookings", force: :cascade do |t|
    t.string   "origin"
    t.string   "destination"
    t.datetime "departure_date"
    t.datetime "date_back"
    t.string   "departure_train"
    t.string   "back_train"
    t.string   "departure_class"
    t.string   "back_class"
    t.integer  "departure_people"
    t.integer  "back_people"
    t.integer  "n_adults"
    t.integer  "n_kids"
    t.boolean  "promo_ferroviario"
    t.boolean  "promo_pensionista"
    t.boolean  "promo_tmesa"
    t.boolean  "promo_fam_num"
    t.boolean  "promo_plus"
    t.boolean  "promo_other"
    t.float    "departure_fare"
    t.float    "back_fare"
    t.string   "payment_method"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "traveler_id"
  end

  create_table "promotional_cards", force: :cascade do |t|
    t.string   "card_name"
    t.string   "card_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "traveler_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string   "full_name"
    t.string   "identity_number"
    t.string   "phone_number"
    t.string   "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
