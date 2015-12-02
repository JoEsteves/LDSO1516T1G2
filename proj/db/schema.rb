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

ActiveRecord::Schema.define(version: 20151202163723) do

  create_table "entities", force: :cascade do |t|
    t.integer  "entityID"
    t.string   "name"
    t.string   "description"
    t.string   "entityCategoryID"
    t.string   "integer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "ticketID"
    t.string   "title"
    t.integer  "ticketCategoryID"
    t.string   "description"
    t.integer  "status"
    t.string   "location"
    t.integer  "userID"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "userID"
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.integer  "userTypeID"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
