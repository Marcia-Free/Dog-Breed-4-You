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

ActiveRecord::Schema.define(version: 2020_11_10_004327) do

  create_table "pet_recommendations", force: :cascade do |t|
    t.string "breed_name"
    t.string "activity_level"
    t.string "dog_size"
    t.boolean "kid_friendly"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "activity_level"
    t.string "dog_size"
    t.boolean "kid_friendly"
  end

  create_table "users_breed_recommendations", force: :cascade do |t|
    t.integer "breed_id"
    t.integer "user_id"
  end

end
