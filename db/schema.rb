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

ActiveRecord::Schema.define(version: 20141114210608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "animals", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.boolean  "endangered", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.integer  "property_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "boundaries", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "soils", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tree_diameters", force: true do |t|
    t.integer  "tree_inventories_id"
    t.integer  "tree_id"
    t.float    "tree_size"
    t.float    "dbh"
    t.float    "height"
    t.float    "crown_width"
    t.text     "overall_condition"
    t.text     "possible_problems"
    t.boolean  "disease",             default: false
    t.integer  "soil_id"
    t.text     "soil_condition"
    t.text     "root_space"
    t.text     "safety"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tree_inventories", force: true do |t|
    t.integer  "property_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trees", force: true do |t|
    t.string   "name"
    t.string   "latin_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "boundaries",  limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wildlives", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "animal_id"
    t.spatial  "lonlat",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.datetime "checked_at",                                                          default: '2014-11-14 21:29:24'
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
