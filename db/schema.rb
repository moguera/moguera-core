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

ActiveRecord::Schema.define(version: 20141107165543) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "name"
    t.binary   "file"
    t.string   "file_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_images", force: true do |t|
    t.integer  "post_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_images", ["image_id"], name: "index_post_images_on_image_id"
  add_index "post_images", ["post_id"], name: "index_post_images_on_post_id"

  create_table "post_steps", force: true do |t|
    t.integer  "post_id"
    t.integer  "step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_steps", ["post_id"], name: "index_post_steps_on_post_id"
  add_index "post_steps", ["step_id"], name: "index_post_steps_on_step_id"

  create_table "post_users", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_users", ["post_id"], name: "index_post_users_on_post_id"
  add_index "post_users", ["user_id"], name: "index_post_users_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.integer  "category_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "step_images", force: true do |t|
    t.integer  "step_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "step_images", ["image_id"], name: "index_step_images_on_image_id"
  add_index "step_images", ["step_id"], name: "index_step_images_on_step_id"

  create_table "steps", force: true do |t|
    t.text     "body"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["post_id"], name: "index_taggings_on_post_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                      null: false
    t.string   "email",                     null: false
    t.string   "password",                  null: false
    t.string   "salt",                      null: false
    t.boolean  "dm",         default: true
    t.boolean  "notify",     default: true
    t.integer  "role_id"
    t.text     "describe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
