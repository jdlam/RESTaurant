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

ActiveRecord::Schema.define(version: 20150825201034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "cost"
    t.datetime "timestamps"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "food_id"
    t.text     "notes"
    t.decimal  "total_cost"
    t.datetime "timestamps"
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "num_of_customers"
    t.boolean  "has_paid"
    t.integer  "server_id"
    t.datetime "timestamps"
  end

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.datetime "timestamps"
  end

end
