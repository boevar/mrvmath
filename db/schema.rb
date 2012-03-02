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

ActiveRecord::Schema.define(:version => 20120302143209) do

  create_table "skeds", :force => true do |t|
    t.string   "code"
    t.string   "gr"
    t.string   "m1"
    t.string   "m2"
    t.string   "m3"
    t.string   "m4"
    t.string   "m5"
    t.string   "t1"
    t.string   "t2"
    t.string   "t3"
    t.string   "t4"
    t.string   "t5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
