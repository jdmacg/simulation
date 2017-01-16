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

ActiveRecord::Schema.define(version: 20170116223455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developments", force: :cascade do |t|
    t.integer  "cost"
    t.boolean  "used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal  "value"
  end

  create_table "incentives", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "value"
    t.integer  "type"
    t.integer  "incentive_type"
    t.string   "description"
    t.string   "calculation_key"
    t.string   "completed_key"
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "team_id"
    t.boolean  "in_development"
    t.integer  "development_id"
    t.string   "city"
    t.boolean  "developed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "property_type_id"
    t.decimal  "value"
    t.string   "poster_image_url"
    t.integer  "province"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id", using: :btree
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "cash_balance"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "team_name"
  end

  create_table "trade_requests", force: :cascade do |t|
    t.integer  "outgoing_cash"
    t.integer  "incoming_cash"
    t.boolean  "completed"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "outgoing_properties", default: [],              array: true
    t.integer  "incoming_properties", default: [],              array: true
    t.integer  "response_turn"
    t.integer  "offeror_id"
    t.integer  "offeree_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "password_digest"
    t.integer  "team_id"
  end

end
