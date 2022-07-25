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

ActiveRecord::Schema.define(version: 2022_07_25_031230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "keeps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_keeps_on_post_id"
    t.index ["user_id", "post_id"], name: "index_keeps_on_user_id_and_post_id", unique: true
    t.index ["user_id"], name: "index_keeps_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "present_name", null: false
    t.integer "present_score", default: 1, null: false
    t.string "present_review", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.integer "keeps_count", default: 0
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", null: false
    t.integer "gender", default: 0, null: false
    t.integer "age", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "keeps", "posts"
  add_foreign_key "keeps", "users"
  add_foreign_key "posts", "users"
end
