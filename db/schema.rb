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

ActiveRecord::Schema.define(version: 20180302212303) do

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "alt_phone"
    t.string   "email"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "off_sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "location"
    t.date     "checked_date"
    t.text     "initial_problem", limit: 65535
    t.string   "service_order"
    t.string   "data"
    t.boolean  "is_done"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "client_id"
    t.string   "serial_number"
    t.string   "tech"
    t.index ["client_id"], name: "index_off_sites_on_client_id", using: :btree
  end

  create_table "on_sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "onsite_date"
    t.text     "symptoms",       limit: 65535
    t.string   "part_num_one"
    t.string   "part_one"
    t.float    "price_one",      limit: 24
    t.string   "part_num_two"
    t.string   "part_two"
    t.float    "price_two",      limit: 24
    t.string   "part_num_three"
    t.string   "part_three"
    t.float    "price_three",    limit: 24
    t.text     "resolution",     limit: 65535
    t.float    "onsite_cost",    limit: 24
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "client_id"
    t.string   "invoice_number"
    t.string   "tech"
    t.index ["client_id"], name: "index_on_sites_on_client_id", using: :btree
  end

  create_table "settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "tax",        limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_settings_on_user_id", using: :btree
  end

  create_table "used_computers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.string   "sub_category"
    t.string   "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "sub_index"
    t.index ["sub_index"], name: "index_used_computers_on_sub_index", using: :btree
  end

  create_table "used_displays", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sub_index"
    t.index ["sub_index"], name: "index_used_displays_on_sub_index", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "userid"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "access_level",    default: "user"
  end

end
