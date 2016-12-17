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

ActiveRecord::Schema.define(version: 20161217145540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.string   "reservations_email"
    t.string   "phone_number"
    t.text     "address"
    t.integer  "supplier_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "branches", ["supplier_id"], name: "index_branches_on_supplier_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tariffs", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "service_id"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tariffs", ["service_id"], name: "index_tariffs_on_service_id", using: :btree
  add_index "tariffs", ["supplier_id"], name: "index_tariffs_on_supplier_id", using: :btree

  create_table "travellers", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "branches", "suppliers"
  add_foreign_key "tariffs", "services"
  add_foreign_key "tariffs", "suppliers"
end
