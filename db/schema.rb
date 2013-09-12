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

ActiveRecord::Schema.define(:version => 20130912213434) do

  create_table "dojobs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fosterer2s", :force => true do |t|
    t.string   "ownhome"
    t.string   "inspecting"
    t.string   "rooms"
    t.string   "roomwarm"
    t.string   "hutch"
    t.string   "rabbithutch"
    t.string   "aviary"
    t.string   "livestockfenced"
    t.text     "homedesc"
    t.integer  "numadulta"
    t.integer  "numchild"
    t.string   "ages"
    t.integer  "numhoursperday"
    t.string   "worktype"
    t.text     "secondperson"
    t.string   "allmembersagree"
    t.string   "bringcentre"
    t.text     "transportdesc"
    t.boolean  "agreement"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "fosterers", :force => true do |t|
    t.string   "motivation"
    t.boolean  "catnursing"
    t.boolean  "catfeeding"
    t.boolean  "catbottlefeed"
    t.boolean  "catinjured"
    t.boolean  "dognursing"
    t.boolean  "dogfeeding"
    t.boolean  "dogbottlefeed"
    t.boolean  "doginjured"
    t.boolean  "rabgui"
    t.boolean  "hedgehoginjured"
    t.boolean  "hedgehogbottle"
    t.boolean  "birdsinjured"
    t.boolean  "birdstoung"
    t.boolean  "livestock"
    t.integer  "volunteer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "personal"
  end

  create_table "frequencies", :force => true do |t|
    t.string   "name",       :default => "weekly", :null => false
    t.integer  "week",       :default => 1,        :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "jobdescriptions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ondays", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vol_job_days", :force => true do |t|
    t.integer  "volunteer_id"
    t.integer  "dojob_id"
    t.integer  "onday_id"
    t.integer  "frequency_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "volcoordinators", :force => true do |t|
    t.string   "email_replyto"
    t.string   "email_header"
    t.string   "email_content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "volschedulers", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.boolean  "befosterer"
    t.integer  "scheduledjobtype_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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
