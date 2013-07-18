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

ActiveRecord::Schema.define(version: 20130718162422) do

  create_table "body_parts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "move_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.string   "name"
    t.integer  "agility",                default: 0
    t.integer  "strength",               default: 0
    t.integer  "technical",              default: 0
    t.integer  "risk",                   default: 0
    t.integer  "brawling",               default: 0
    t.integer  "durability",             default: 0
    t.integer  "body_helper_id"
    t.integer  "body_opp_id"
    t.integer  "injure",                 default: 0
    t.integer  "move_type_id"
    t.integer  "control_start_pos_id"
    t.integer  "opp_start_pos_id"
    t.integer  "control_success_pos_id"
    t.integer  "opp_success_pos_id"
    t.string   "control_fail_pos_id"
    t.integer  "opp_fail_pos_id"
    t.integer  "daze",                   default: 0
    t.text     "special"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "target",                 default: 0
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
