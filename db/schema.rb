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

ActiveRecord::Schema.define(version: 20141014005853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alias_tags", id: false, force: true do |t|
    t.integer "tag_id"
    t.integer "alias_id"
  end

  add_index "alias_tags", ["alias_id"], name: "index_alias_tags_on_alias_id", using: :btree
  add_index "alias_tags", ["tag_id"], name: "index_alias_tags_on_tag_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "email"
    t.string   "telephone"
    t.string   "twitter_handle"
    t.string   "facebook_name"
    t.string   "google_plus_name"
    t.string   "street"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes_projects", id: false, force: true do |t|
    t.integer "project_id", null: false
    t.integer "recipe_id",  null: false
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

end
