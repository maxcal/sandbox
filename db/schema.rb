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

ActiveRecord::Schema.define(version: 20150819172225) do

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "answerable_id"
    t.string   "answerable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "answers", ["answerable_type", "answerable_id"], name: "index_answers_on_answerable_type_and_answerable_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "assignments", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["lesson_id"], name: "index_assignments_on_lesson_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "lessons", force: :cascade do |t|
    t.datetime "date"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lessons", ["school_id"], name: "index_lessons_on_school_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
