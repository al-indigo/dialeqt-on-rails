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

ActiveRecord::Schema.define(version: 20131020124059) do

  create_table "attachments", force: true do |t|
    t.string   "description"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "attributes", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications", force: true do |t|
    t.string   "name"
    t.integer  "majority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradigms", force: true do |t|
    t.string   "word"
    t.string   "transcription"
    t.string   "translation"
    t.integer  "word_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "praats", force: true do |t|
    t.string   "description"
    t.integer  "praatable_id"
    t.string   "praataable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
    t.string   "markup_file_name"
    t.string   "markup_content_type"
    t.integer  "markup_file_size"
    t.datetime "markup_updated_at"
  end

  create_table "tales", force: true do |t|
    t.string   "name"
    t.text     "tale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.string   "word"
    t.string   "transcription"
    t.string   "translation"
    t.string   "tag"
    t.integer  "attribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
