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

ActiveRecord::Schema.define(version: 2020_12_15_123359) do

  create_table "members", force: :cascade do |t|
    t.string "name", null: false
    t.integer "gender"
    t.integer "telephone", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.date "birthday", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name", null: false
    t.integer "dinner_id", null: false
    t.date "plan_start", null: false
    t.date "plan_end", null: false
    t.integer "guest_max", null: false
    t.integer "guest_min", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "type_id", null: false
    t.integer "member_id", null: false
    t.integer "guest_count", null: false
    t.date "date_start", null: false
    t.date "date_end", null: false
    t.boolean "morning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
