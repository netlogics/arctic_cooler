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

ActiveRecord::Schema.define(version: 20170410190230) do

  create_table "blades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "fan_id"
    t.decimal "length", precision: 5, scale: 2, default: "0.0",      null: false
    t.decimal "width",  precision: 5, scale: 2, default: "0.0",      null: false
    t.string  "type",                           default: "straight", null: false
    t.index ["type"], name: "index_blades_on_type", using: :btree
  end

  create_table "fans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "state",      default: "off", null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["state"], name: "index_fans_on_state", using: :btree
  end

  create_table "grids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_grids_on_name", unique: true, using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "fan_id"
    t.integer  "grid_id"
    t.decimal  "latitude",   precision: 10, scale: 6, default: "0.0", null: false
    t.decimal  "longitude",  precision: 10, scale: 6, default: "0.0", null: false
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "motor_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "motor_id",                                           null: false
    t.decimal  "amperage",   precision: 5, scale: 3, default: "0.0", null: false
    t.decimal  "horsepower", precision: 5, scale: 3, default: "0.0", null: false
    t.decimal  "voltage",    precision: 5, scale: 3, default: "0.0", null: false
    t.decimal  "weight",     precision: 5, scale: 3, default: "0.0", null: false
    t.decimal  "width",      precision: 5, scale: 3, default: "0.0", null: false
    t.decimal  "height",     precision: 5, scale: 3, default: "0.0", null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "motors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "fan_id"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventilation_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "fan_id"
    t.integer  "grid_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
