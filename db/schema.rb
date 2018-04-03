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

ActiveRecord::Schema.define(version: 20180403025958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.text "lg_name"
    t.text "size"
    t.float "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_pols", force: :cascade do |t|
    t.integer "group_id"
    t.integer "pol_id"
  end

  create_table "pols", force: :cascade do |t|
    t.text "name"
    t.text "party"
    t.text "NRA_rating"
    t.text "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
  end

  create_table "pols_users", force: :cascade do |t|
    t.integer "pol_id"
    t.integer "user_id"
  end

  create_table "states", force: :cascade do |t|
    t.text "state_name"
    t.text "gun_control_rating"
    t.boolean "handg_bans"
    t.boolean "assaultw_bans"
    t.boolean "background_checks"
    t.integer "min_age"
    t.boolean "bump_bans"
    t.boolean "open_carry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "following"
    t.float "donation_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
