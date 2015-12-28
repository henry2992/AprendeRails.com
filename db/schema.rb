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

ActiveRecord::Schema.define(version: 20151225141426) do

  create_table "chapters", force: :cascade do |t|
    t.string   "title"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chapters", ["course_id"], name: "index_chapters_on_course_id"

  create_table "codecasts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "icon"
    t.string   "level"
    t.string   "video_url"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.string   "level"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "status",          default: false
    t.string   "preview_url"
    t.string   "bg_picture"
    t.string   "principal_title"
    t.string   "secondary_title"
  end

  create_table "subchapters", force: :cascade do |t|
    t.string   "title"
    t.integer  "chapter_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  add_index "subchapters", ["chapter_id"], name: "index_subchapters_on_chapter_id"
  add_index "subchapters", ["course_id"], name: "index_subchapters_on_course_id"

  create_table "uploads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
