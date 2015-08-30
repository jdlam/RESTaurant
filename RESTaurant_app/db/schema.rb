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

ActiveRecord::Schema.define(version: 20150828222741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "cost"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "food_id"
    t.string   "notes"
    t.decimal  "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "num_of_customers"
    t.integer  "server_id"
    t.integer  "table_id"
    t.boolean  "food_ready"
    t.boolean  "has_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "tab"
  end

  create_table "receipts", force: :cascade do |t|
    t.integer  "party_id"
    t.decimal  "tab"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
