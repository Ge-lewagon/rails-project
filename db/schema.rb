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

ActiveRecord::Schema[7.0].define(version: 2024_01_13_093240) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "excercises", force: :cascade do |t|
    t.string "name"
    t.string "gif_url"
    t.bigint "muscle_subgroup_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muscle_subgroup_id"], name: "index_excercises_on_muscle_subgroup_id"
  end

  create_table "muscle_subgroups", force: :cascade do |t|
    t.string "subcategory"
    t.bigint "muscle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muscle_id"], name: "index_muscle_subgroups_on_muscle_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.date "date"
    t.integer "set"
    t.integer "rep"
    t.bigint "user_id", null: false
    t.bigint "excercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["excercise_id"], name: "index_workouts_on_excercise_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "excercises", "muscle_subgroups"
  add_foreign_key "muscle_subgroups", "muscles"
  add_foreign_key "workouts", "excercises"
  add_foreign_key "workouts", "users"
end
