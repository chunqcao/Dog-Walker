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

ActiveRecord::Schema.define(version: 2019_09_12_024215) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.date "birth"
    t.string "gender"
    t.integer "weight"
    t.string "breed"
    t.binary "photo"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "dogs_events", id: false, force: :cascade do |t|
    t.integer "dog_id", null: false
    t.integer "event_id", null: false
    t.index ["dog_id"], name: "index_dogs_events_on_dog_id"
    t.index ["event_id"], name: "index_dogs_events_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal "price"
    t.text "dog_performance"
    t.integer "rate_for_walker"
    t.text "comment_for_walker"
    t.integer "walker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["walker_id"], name: "index_events_on_walker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "walkers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "email"
    t.integer "phone"
    t.text "bio"
    t.float "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
