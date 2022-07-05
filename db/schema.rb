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

ActiveRecord::Schema.define(version: 2022_07_05_082134) do

  create_table "applications", force: :cascade do |t|
    t.integer "trainee_id"
    t.integer "trainer_id"
    t.integer "gym_id"
    t.date "start_date"
    t.date "end_date"
    t.text "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_applications_on_gym_id"
    t.index ["trainee_id"], name: "index_applications_on_trainee_id"
    t.index ["trainer_id"], name: "index_applications_on_trainer_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "email"
    t.string "Password"
    t.string "Name"
    t.string "City"
    t.string "Owner_name"
    t.string "fees"
    t.text "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "Interior_score"
    t.integer "Equipment_score"
    t.integer "Gym_score"
    t.integer "Trainer_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.bigint "revial_id"
    t.string "Revial_type"
    t.integer "application_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["application_id"], name: "index_reviews_on_application_id"
  end

  create_table "trainees", force: :cascade do |t|
    t.string "Email"
    t.string "Password"
    t.string "Name"
    t.string "City"
    t.string "Contact"
    t.text "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "Email"
    t.string "Password"
    t.string "Name"
    t.string "Experience"
    t.string "fees"
    t.text "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gym_id"
  end

end
