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

ActiveRecord::Schema.define(version: 20170325061434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_groups", force: :cascade do |t|
    t.integer  "staff_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_class_groups_on_staff_id", using: :btree
  end

  create_table "families", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "token"
    t.string   "refresh_token"
    t.string   "expires_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "school_id"
    t.index ["school_id"], name: "index_staffs_on_school_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.integer  "class_group_id"
    t.integer  "family_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["class_group_id"], name: "index_students_on_class_group_id", using: :btree
    t.index ["family_id"], name: "index_students_on_family_id", using: :btree
  end

  add_foreign_key "class_groups", "staffs"
  add_foreign_key "staffs", "schools"
  add_foreign_key "students", "class_groups"
  add_foreign_key "students", "families"
end
