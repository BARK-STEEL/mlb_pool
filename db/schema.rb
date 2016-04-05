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

ActiveRecord::Schema.define(version: 20160405174611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.boolean  "zero",       default: false
    t.boolean  "one",        default: false
    t.boolean  "two",        default: false
    t.boolean  "three",      default: false
    t.boolean  "four",       default: false
    t.boolean  "five",       default: false
    t.boolean  "six",        default: false
    t.boolean  "seven",      default: false
    t.boolean  "eight",      default: false
    t.boolean  "nine",       default: false
    t.boolean  "ten",        default: false
    t.boolean  "eleven",     default: false
    t.boolean  "twelve",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
