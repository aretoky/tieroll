# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171022031620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "product_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patterns", force: :cascade do |t|
    t.string "product_pattern"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "product_id_id"
    t.string "j_front"
    t.string "j_back"
    t.string "open_front"
    t.string "closed_front"
    t.string "lapel"
    t.string "j_hem"
    t.string "j_button"
    t.string "j_inner"
    t.string "j_r_inner"
    t.string "j_l_inner"
    t.string "j_pocket"
    t.string "j_breast_pocket"
    t.string "s_front"
    t.string "s_back"
    t.string "s_hem"
    t.string "s_button"
    t.string "s_breast_pocket"
    t.string "colar"
    t.string "p_front"
    t.string "p_back"
    t.string "p_inner"
    t.string "belt_roop"
    t.string "v_front"
    t.string "v_back"
    t.string "v_inner"
    t.string "v_buckle"
    t.string "tie_one"
    t.string "tie_two"
    t.string "belt_one"
    t.string "belt_two"
    t.string "shoes_one"
    t.string "shoes_two"
    t.string "shoes_three"
    t.string "other_one"
    t.string "other_two"
    t.string "other_three"
    t.string "other_four"
    t.string "other_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_id"], name: "index_photos_on_product_id_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.bigint "photo_id"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.integer "size"
    t.string "product_name"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_products_on_photo_id"
    t.index ["staff_member_id"], name: "index_products_on_staff_member_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "product_scene"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "product_season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "product_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_members", force: :cascade do |t|
    t.string "company", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.date "start_time"
    t.date "end_time"
    t.boolean "suspended", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
