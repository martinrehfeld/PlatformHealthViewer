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

ActiveRecord::Schema.define(:version => 20101207080932) do

  create_table "event_types", :force => true do |t|
    t.string   "source"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_types", ["source", "name"], :name => "index_event_types_on_source_and_name", :unique => true

  create_table "events", :force => true do |t|
    t.integer  "event_type_id"
    t.float    "value",         :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["event_type_id", "created_at"], :name => "index_events_on_event_type_id_and_created_at"
  add_index "events", ["event_type_id"], :name => "index_events_on_event_type"
  add_index "events", ["value"], :name => "index_events_on_value"

  create_table "frames", :force => true do |t|
    t.integer  "left"
    t.integer  "top"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "screen_id"
    t.string   "tag"
  end

  add_index "frames", ["screen_id"], :name => "index_frames_on_screen_id"

  create_table "queue_events", :force => true do |t|
    t.string   "source"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screens", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
