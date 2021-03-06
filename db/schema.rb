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

ActiveRecord::Schema.define(:version => 20131026120614) do

  create_table "geosmaps", :force => true do |t|
    t.float    "centerlat"
    t.float    "centerlng"
    t.string   "name"
    t.integer  "zoom"
    t.string   "maptype"
    t.integer  "incident_id"
    t.integer  "operation_id"
    t.integer  "sector_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "geosmarkers", :force => true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.string   "icon"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "geosmarkers_situation_geosmaps", :id => false, :force => true do |t|
    t.integer "geosmarker_id"
    t.integer "situation_geosmap_id"
  end

  create_table "incident_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "incident_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "incidents", :force => true do |t|
    t.string   "title"
    t.float    "lat"
    t.float    "lng"
    t.text     "description"
    t.string   "incidentType"
    t.string   "incidentStatus"
    t.datetime "finalizedTime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "address"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "situation_geosmaps", :force => true do |t|
    t.float    "centerlat"
    t.float    "centerlng"
    t.string   "name"
    t.integer  "zoom"
    t.string   "maptype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
