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

ActiveRecord::Schema.define(version: 2021_12_16_164130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crew_members", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "rank"
    t.string "assignment"
    t.bigint "spaceship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spaceship_id"], name: "index_crew_members_on_spaceship_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "length"
    t.date "start_date"
    t.bigint "crew_member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_member_id"], name: "index_missions_on_crew_member_id"
  end

  create_table "spaceships", force: :cascade do |t|
    t.string "name"
    t.integer "crew"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "crew_members", "spaceships"
  add_foreign_key "missions", "crew_members"
end
