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

ActiveRecord::Schema[7.0].define(version: 2022_10_21_190947) do
  create_table "crew_members", force: :cascade do |t|
    t.string "name"
    t.string "job_title"
    t.integer "production_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
    t.index ["production_id"], name: "index_crew_members_on_production_id"
  end

  create_table "productions", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.integer "budget"
    t.string "image"
    t.boolean "ongoing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  add_foreign_key "crew_members", "productions"
end
