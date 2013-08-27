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

ActiveRecord::Schema.define(:version => 20130822075814) do

  create_table "volcoordinators", :force => true do |t|
    t.string   "email_replyto"
    t.string   "email_header"
    t.string   "email_content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "title"
    t.date     "dob"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address"
    t.string   "email"
    t.string   "moblie"
    t.string   "home"
    t.text     "background"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "whiteboards", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "volunteer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "whiteboards", ["volunteer_id"], :name => "index_whiteboards_on_volunteer_id"

end
