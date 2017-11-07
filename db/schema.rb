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

ActiveRecord::Schema.define(version: 20171107032439) do

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

  create_table "belts", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "belt_name"
    t.string "belt_code"
    t.string "belt_one"
    t.string "belt_two"
    t.string "belt_three"
    t.string "belt_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_belts_on_staff_member_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "product_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jackets", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "jacket_name"
    t.string "jacket_code"
    t.string "j_front"
    t.string "j_back"
    t.string "open_front"
    t.string "closed_front"
    t.string "j_cuff"
    t.string "lapel"
    t.string "j_inner"
    t.string "j_inner_r"
    t.string "j_inner_l"
    t.string "j_button"
    t.string "j_pocket"
    t.string "j_breast_pocket"
    t.string "j_other_one"
    t.string "j_other_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_jackets_on_staff_member_id"
  end

  create_table "others", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "other_item_name"
    t.string "other_item_code"
    t.string "other_one"
    t.string "other_two"
    t.string "other_three"
    t.string "other_four"
    t.string "other_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_others_on_staff_member_id"
  end

  create_table "pants", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "pant_name"
    t.string "pant_code"
    t.string "p_front"
    t.string "p_back"
    t.string "p_side"
    t.string "p_inner"
    t.string "belt_roop"
    t.string "p_front_pocket"
    t.string "p_back_pocket"
    t.string "p_hem"
    t.string "p_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_pants_on_staff_member_id"
  end

  create_table "patterns", force: :cascade do |t|
    t.string "product_pattern"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pocket_chiefs", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "chief_name"
    t.string "chief_code"
    t.string "chief_one"
    t.string "chief_two"
    t.string "chief_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_pocket_chiefs_on_staff_member_id"
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

  create_table "shoes", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "shoe_name"
    t.string "shoe_code"
    t.string "shoe_front"
    t.string "shoe_back"
    t.string "shoe_inner"
    t.string "shoe_out_side"
    t.string "shoe_sole"
    t.string "toe"
    t.string "shoe_one"
    t.string "shoe_two"
    t.string "shoe_three"
    t.string "shoe_four"
    t.string "shoe_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_shoes_on_staff_member_id"
  end

  create_table "shurts", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "shurt_name"
    t.string "shurt_code"
    t.string "s_front"
    t.string "s_back"
    t.string "s_cuff"
    t.string "s_button"
    t.string "s_breast_pocket"
    t.string "s_collar"
    t.string "s_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_shurts_on_staff_member_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "product_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socks", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "socks_name"
    t.string "socks_code"
    t.string "socks_one"
    t.string "socks_two"
    t.string "socks_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_socks_on_staff_member_id"
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

  create_table "tie_necks", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "tie_name"
    t.string "tie_code"
    t.string "tie_one"
    t.string "tie_two"
    t.string "tie_three"
    t.string "tie_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_tie_necks_on_staff_member_id"
  end

  create_table "tie_pins", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "tie_pin_name"
    t.string "tie_pin_code"
    t.string "tie_pin_one"
    t.string "tie_pin_two"
    t.string "tie_pin_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_tie_pins_on_staff_member_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vests", force: :cascade do |t|
    t.bigint "staff_member_id"
    t.integer "price"
    t.integer "size"
    t.integer "color"
    t.integer "pattern"
    t.integer "season"
    t.integer "scene"
    t.text "description"
    t.text "raw_materials"
    t.string "vest_name"
    t.string "vest_code"
    t.string "v_front"
    t.string "v_back"
    t.string "v_pocket"
    t.string "v_breast_pocket"
    t.string "v_inner"
    t.string "v_buckle"
    t.string "v_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_member_id"], name: "index_vests_on_staff_member_id"
  end

  add_foreign_key "belts", "staff_members"
  add_foreign_key "jackets", "staff_members"
  add_foreign_key "others", "staff_members"
  add_foreign_key "pants", "staff_members"
  add_foreign_key "pocket_chiefs", "staff_members"
  add_foreign_key "shoes", "staff_members"
  add_foreign_key "shurts", "staff_members"
  add_foreign_key "socks", "staff_members"
  add_foreign_key "tie_necks", "staff_members"
  add_foreign_key "tie_pins", "staff_members"
  add_foreign_key "vests", "staff_members"
end
