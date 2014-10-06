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

ActiveRecord::Schema.define(version: 20141006145542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "users_title"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "closed",      default: false
  end

  create_table "expenses", force: true do |t|
    t.string   "item"
    t.decimal  "amount"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "calculation_type"
    t.string   "tag"
    t.boolean  "approved",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  create_table "roles", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "amount_owed"
    t.string   "permission"
    t.boolean  "paid",        default: false
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "accepted",    default: false
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "image"
    t.string   "name"
    t.string   "phone_number"
    t.boolean  "admin",           default: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
