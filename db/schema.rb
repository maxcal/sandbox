# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150724170012) do

  create_table "marriages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marriages_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "marriage_id", null: false
  end

  add_index "marriages_users", ["marriage_id", "user_id"], name: "index_marriages_users_on_marriage_id_and_user_id"
  add_index "marriages_users", ["user_id", "marriage_id"], name: "index_marriages_users_on_user_id_and_marriage_id"

  create_table "parental_relationships", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parental_relationships", ["child_id"], name: "index_parental_relationships_on_child_id"
  add_index "parental_relationships", ["parent_id"], name: "index_parental_relationships_on_parent_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "current_marriage_id"
  end

  add_index "users", ["current_marriage_id"], name: "index_users_on_current_marriage_id"

end
