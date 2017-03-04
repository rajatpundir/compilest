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

ActiveRecord::Schema.define(version: 20170303092030) do

  create_table "admin_users", force: :cascade do |t|
    t.integer  "year",                              null: false
    t.string   "first_name",                        null: false
    t.string   "last_name",                         null: false
    t.string   "section",                           null: false
    t.integer  "roll_number",                       null: false
    t.string   "email",                             null: false
    t.string   "user_mobile",                       null: false
    t.string   "father",                            null: false
    t.string   "father_occupation",                 null: false
    t.string   "father_mobile",                     null: false
    t.string   "mother",                            null: false
    t.string   "mother_occupation",                 null: false
    t.string   "mother_mobile",                     null: false
    t.string   "interests",                         null: false
    t.string   "goals",                             null: false
    t.string   "skills",                            null: false
    t.string   "strengths",                         null: false
    t.string   "weaknesses",                        null: false
    t.string   "username",                          null: false
    t.string   "password_digest"
    t.boolean  "superuser",         default: false
    t.string   "answered",          default: ""
    t.integer  "score",             default: -1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "description", default: "", null: false
    t.text     "answer",      default: ""
    t.text     "one",         default: ""
    t.text     "two",         default: ""
    t.text     "three",       default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
