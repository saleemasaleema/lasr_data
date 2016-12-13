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

ActiveRecord::Schema.define(version: 20161213063818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attends", force: :cascade do |t|
    t.integer  "instructorr_id"
    t.integer  "class_room_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["class_room_id"], name: "index_attends_on_class_room_id", using: :btree
    t.index ["instructorr_id"], name: "index_attends_on_instructorr_id", using: :btree
  end

  create_table "class_rooms", force: :cascade do |t|
    t.integer  "Cl_no"
    t.date     "Cl_date"
    t.integer  "Strength"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_class_rooms_on_section_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "Title"
    t.integer  "Price"
    t.integer  "C_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructorrs", force: :cascade do |t|
    t.string   "i_name"
    t.text     "i_address"
    t.string   "Gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "Sec_no"
    t.integer  "Strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "S_name"
    t.string   "Gender"
    t.text     "Address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "takens", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_takens_on_course_id", using: :btree
    t.index ["student_id"], name: "index_takens_on_student_id", using: :btree
  end

  create_table "taughts", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "instructorr_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["course_id"], name: "index_taughts_on_course_id", using: :btree
    t.index ["instructorr_id"], name: "index_taughts_on_instructorr_id", using: :btree
  end

  add_foreign_key "attends", "class_rooms"
  add_foreign_key "attends", "instructorrs"
  add_foreign_key "class_rooms", "sections"
  add_foreign_key "takens", "courses"
  add_foreign_key "takens", "students"
  add_foreign_key "taughts", "courses"
  add_foreign_key "taughts", "instructorrs"
end
