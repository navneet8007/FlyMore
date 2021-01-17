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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210115233640) do

  create_table "airports", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "flight_id",      limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id",        limit: 4
    t.string   "booking_number", limit: 255
    t.decimal  "amount",                     precision: 10
    t.boolean  "paid"
  end

  add_index "bookings", ["flight_id"], name: "index_bookings_on_flight_id", using: :btree

  create_table "flights", force: :cascade do |t|
    t.string   "airline",                limit: 255
    t.integer  "origin_airport_id",      limit: 4
    t.integer  "destination_airport_id", limit: 4
    t.datetime "departure_datetime"
    t.datetime "arrival_datetime"
    t.decimal  "price",                              precision: 10
    t.integer  "capacity",               limit: 4
    t.integer  "available_seats",        limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "flight_no",              limit: 255
  end

  create_table "passengers", force: :cascade do |t|
    t.integer  "booking_id", limit: 4
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
