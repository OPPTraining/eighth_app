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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130422203839) do

  create_table "attendances", :force => true do |t|
    t.integer  "coursesection_id"
    t.boolean  "didattend"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "approved"
    t.integer  "user_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "coursename"
    t.text     "coursedescription"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "resource"
  end

  create_table "coursesections", :force => true do |t|
    t.integer  "course_id"
    t.datetime "coursesectiondate"
    t.string   "location"
    t.integer  "duration"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "facilitator"
  end

  add_index "coursesections", ["course_id", "created_at"], :name => "index_coursesections_on_course_id_and_created_at"

  create_table "evaluations", :force => true do |t|
    t.integer  "coursesection_id"
    t.integer  "Q1"
    t.integer  "Q2"
    t.integer  "Q3"
    t.integer  "Q4"
    t.text     "Q5"
    t.text     "Q6"
    t.text     "Q7"
    t.text     "Q8"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

  create_table "externaltrainings", :force => true do |t|
    t.string   "title"
    t.string   "facilitator"
    t.datetime "date"
    t.integer  "duration"
    t.text     "description"
    t.boolean  "supervisorapproval"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "externalresource"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.boolean  "supervisor",      :default => false
    t.boolean  "inactive",        :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
