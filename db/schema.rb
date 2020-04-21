# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_15_203306) do

  create_table "assignments", force: :cascade do |t|
    t.integer "lab_id", null: false
    t.integer "computer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computer_id"], name: "index_assignments_on_computer_id"
    t.index ["lab_id"], name: "index_assignments_on_lab_id"
  end

  create_table "computers", force: :cascade do |t|
    t.string "name"
    t.integer "barcode"
    t.text "description"
    t.string "make"
    t.string "model"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "department"
    t.integer "sections"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.date "startDate"
    t.date "endDate"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_labs_on_course_id"
  end

  add_foreign_key "assignments", "computers"
  add_foreign_key "assignments", "labs"
  add_foreign_key "labs", "courses"
end
