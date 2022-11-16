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

ActiveRecord::Schema[7.0].define(version: 2022_11_15_125517) do
  create_table "Class", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "Name", limit: 45
  end

  create_table "Student", primary_key: "idStudent", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "Surname", limit: 45
    t.string "Street", limit: 45
    t.string "House", limit: 45
    t.string "Flat", limit: 45
    t.integer "Class_id", null: false
    t.index ["Class_id"], name: "fk_Student_Class_idx"
  end

  create_table "Test", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "Name"
  end

  create_table "classes", charset: "utf8", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "Name", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producs", charset: "utf8", force: :cascade do |t|
    t.decimal "name", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", charset: "utf8", force: :cascade do |t|
    t.string "Surname"
    t.string "Street"
    t.string "House"
    t.string "Flat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "students_index_2"
  end

  create_table "tests", charset: "utf8", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "Student", "Class", name: "fk_Student_Class"
  add_foreign_key "students", "groups", name: "students_relation_1"
end
