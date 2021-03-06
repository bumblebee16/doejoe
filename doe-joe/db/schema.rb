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

ActiveRecord::Schema.define(version: 20160911221033) do

  create_table "locations", force: :cascade do |t|
    t.string   "area"
    t.string   "coordinatorname"
    t.text     "address"
    t.integer  "partner_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "contact"
    t.index ["partner_id"], name: "index_locations_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "remarks"
    t.text     "curriculum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.string   "day"
    t.time     "start"
    t.time     "end"
    t.integer  "noofseats"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "index_timeslots_on_location_id"
  end

end
