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

ActiveRecord::Schema.define(version: 2020_09_10_235106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artgallaries", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_info"
    t.bigint "user_id", null: false
    t.bigint "image_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_comments_on_image_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "image_type"
    t.string "description"
    t.bigint "user_id", null: false
    t.bigint "artgallary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artgallary_id"], name: "index_images_on_artgallary_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "user_artgallaries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "artgallary_id", null: false
    t.boolean "creator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artgallary_id"], name: "index_user_artgallaries_on_artgallary_id"
    t.index ["user_id"], name: "index_user_artgallaries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "images"
  add_foreign_key "comments", "users"
  add_foreign_key "images", "artgallaries"
  add_foreign_key "images", "users"
  add_foreign_key "user_artgallaries", "artgallaries"
  add_foreign_key "user_artgallaries", "users"
end
