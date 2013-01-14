# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130114152711) do

  create_table "bids", :force => true do |t|
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "car_id"
  end

  add_index "bids", ["car_id"], :name => "index_bids_on_car_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manufacturer_id"
  end

  add_index "brands", ["manufacturer_id"], :name => "index_brands_on_manufacturer_id"

  create_table "cars", :force => true do |t|
    t.string   "vin"
    t.string   "year"
    t.string   "state"
    t.text     "details"
    t.integer  "current_bid"
    t.integer  "buyout_price"
    t.datetime "ending_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
    t.integer  "manufacturer_id"
    t.integer  "owner_id"
    t.string   "name"
  end

  add_index "cars", ["brand_id"], :name => "index_cars_on_brand_id"
  add_index "cars", ["manufacturer_id"], :name => "index_cars_on_manufacturer_id"
  add_index "cars", ["owner_id"], :name => "index_cars_on_owner_id"

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "inactive"
    t.datetime "key_timestamp"
    t.string   "telephone"
    t.integer  "balance",                                 :default => 99999
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
