# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_09_220847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dance_classes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "price"
    t.bigint "teacher_id", null: false
    t.bigint "studio_id", null: false
    t.bigint "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_dance_classes_on_level_id"
    t.index ["studio_id"], name: "index_dance_classes_on_studio_id"
    t.index ["teacher_id"], name: "index_dance_classes_on_teacher_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "phone"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dance_classes", "studios"
  add_foreign_key "dance_classes", "teachers"
end
