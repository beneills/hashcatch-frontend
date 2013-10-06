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

ActiveRecord::Schema.define(version: 20131006173854) do

  create_table "cite_entries", force: true do |t|
    t.text     "url"
    t.text     "archive_url"
    t.text     "note"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "tweet"
  end

  add_index "cite_entries", ["user_id"], name: "index_cite_entries_on_user_id"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "top_entries", force: true do |t|
    t.integer  "place"
    t.text     "text"
    t.text     "link"
    t.string   "category"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "tweet"
    t.text     "amazon_asin"
    t.text     "amazon_title"
    t.text     "amazon_author"
    t.text     "amazon_small_image"
    t.text     "amazon_medium_image"
    t.text     "amazon_associate_url"
    t.text     "amazon_artist"
  end

  add_index "top_entries", ["user_id"], name: "index_top_entries_on_user_id"

  create_table "users", force: true do |t|
    t.text     "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.text     "description"
    t.text     "location"
    t.text     "verified"
    t.text     "profile_image_url"
    t.string   "twitter_user_id"
  end

end
