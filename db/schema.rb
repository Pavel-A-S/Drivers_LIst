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

ActiveRecord::Schema.define(version: 20160203190423) do

  create_table "drivers_routes", force: :cascade do |t|
    t.integer  "driver_id"
    t.datetime "driving_from_at"
    t.datetime "driving_to_at"
    t.integer  "route_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "last_connected_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipients", force: :cascade do |t|
    t.integer  "message_id"
    t.integer  "recipientable_id"
    t.string   "recipientable_type"
    t.string   "state"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "recipients", ["recipientable_id"], name: "index_recipients_on_recipientable_id"

  create_table "routes", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes_trucks", force: :cascade do |t|
    t.integer  "route_id"
    t.datetime "from_at"
    t.datetime "to_at"
    t.integer  "truck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "label"
    t.integer  "colli_in_truck"
    t.decimal  "turnover"
    t.string   "last_lat_lng"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
