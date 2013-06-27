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

ActiveRecord::Schema.define(:version => 20130415001101) do

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "small_url"
    t.string   "medium_url"
    t.string   "large_url"
    t.string   "square_url"
    t.string   "thumbnail_url"
    t.string   "original_url"
    t.string   "photoset_id"
    t.string   "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photosets", :force => true do |t|
    t.string   "title"
    t.string   "set_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photosets_photos", :force => true do |t|
    t.integer "photo_id"
    t.integer "photoset_id"
  end

end
