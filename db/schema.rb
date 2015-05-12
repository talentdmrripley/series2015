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

ActiveRecord::Schema.define(version: 20150504214107) do

  create_table "event_schedules", force: true do |t|
    t.string   "objectID"
    t.datetime "event_date"
    t.string   "event_site"
    t.string   "event_visitor"
    t.string   "event_home"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hstarters", force: true do |t|
    t.string   "eventschedule_ID"
    t.string   "team"
    t.string   "firstlast"
    t.string   "inning_entered"
    t.string   "player_position"
    t.string   "visitor_shortname"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scoreboards", force: true do |t|
    t.string   "eventschedule_ID"
    t.integer  "event_schedule_id"
    t.string   "title"
    t.string   "visitor"
    t.string   "home"
    t.string   "v1"
    t.string   "h1"
    t.string   "v2"
    t.string   "h2"
    t.string   "v3"
    t.string   "h3"
    t.string   "v4"
    t.string   "h4"
    t.string   "v5"
    t.string   "h5"
    t.string   "v6"
    t.string   "h6"
    t.string   "v7"
    t.string   "h7"
    t.string   "v8"
    t.string   "h8"
    t.string   "v9"
    t.string   "h9"
    t.string   "v10"
    t.string   "h10"
    t.string   "v11"
    t.string   "h11"
    t.string   "v12"
    t.string   "h12"
    t.string   "v13"
    t.string   "h13"
    t.string   "v14"
    t.string   "h14"
    t.string   "v15"
    t.string   "h15"
    t.string   "v16"
    t.string   "h16"
    t.string   "v17"
    t.string   "h17"
    t.string   "v18"
    t.string   "h18"
    t.string   "v19"
    t.string   "h19"
    t.string   "v20"
    t.string   "h20"
    t.string   "vruns"
    t.string   "hruns"
    t.string   "vhits"
    t.string   "hhits"
    t.string   "verrs"
    t.string   "herrs"
    t.string   "gamenotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scoreboards", ["event_schedule_id"], name: "index_scoreboards_on_event_schedule_id"

  create_table "vstarters", force: true do |t|
    t.string   "eventschedule_ID"
    t.string   "team"
    t.string   "firstlast"
    t.string   "inning_entered"
    t.string   "player_position"
    t.string   "visitor_shortname"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
