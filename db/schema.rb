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

ActiveRecord::Schema.define(version: 20170522033606) do

  create_table "items", force: :cascade do |t|
    t.string   "action"
    t.integer  "project_id"
    t.boolean  "done",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "items", ["deleted_at"], name: "index_items_on_deleted_at"
  add_index "items", ["id"], name: "index_items_on_id", unique: true, where: "deleted_at IS NULL"
  add_index "items", ["project_id"], name: "index_items_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "projects", ["deleted_at"], name: "index_projects_on_deleted_at"
  add_index "projects", ["id"], name: "index_projects_on_id", unique: true, where: "deleted_at IS NULL"
  add_index "projects", ["title"], name: "index_projects_on_title", unique: true, where: "deleted_at IS NULL"

end
