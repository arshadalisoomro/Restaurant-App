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

ActiveRecord::Schema.define(version: 20150828233727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",       precision: 4, scale: 2
    t.string   "course"
    t.string   "description",                         default: "facilitate plug-and-play platforms"
    t.boolean  "on_menu",                             default: true
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "table_id"
    t.integer  "waiter_id"
    t.integer  "size"
    t.boolean  "has_paid",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "party_orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "food_id"
    t.boolean  "cooked",     default: false
    t.boolean  "has_paid",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "status",     default: "active"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "waiters", force: :cascade do |t|
    t.string   "name"
    t.string   "status",     default: "active"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
