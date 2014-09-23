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

ActiveRecord::Schema.define(version: 20140923003857) do

  create_table "file_records", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "step_id"
  end

  add_index "file_records", ["step_id"], name: "index_file_records_on_step_id"

  create_table "file_records_tags", id: false, force: true do |t|
    t.integer "file_record_id"
    t.integer "tag_id"
  end

  create_table "offices", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.integer  "dni"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.integer  "office_id"
    t.integer  "file_record_id"
  end

  add_index "steps", ["file_record_id"], name: "index_steps_on_file_record_id"
  add_index "steps", ["office_id"], name: "index_steps_on_office_id"
  add_index "steps", ["person_id"], name: "index_steps_on_person_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
