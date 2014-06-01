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

ActiveRecord::Schema.define(version: 20131111082125) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_dictionaries", id: false, force: true do |t|
    t.integer "dictionary_id", null: false
    t.integer "author_id",     null: false
  end

  create_table "classifications", force: true do |t|
    t.string   "name"
    t.integer  "majority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications_dictionaries", id: false, force: true do |t|
    t.integer "dictionary_id",     null: false
    t.integer "classification_id", null: false
  end

  create_table "dictionaries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "identifier"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradigm_praats", force: true do |t|
    t.integer  "paradigm_id"
    t.string   "description"
    t.string   "markup_file_name"
    t.string   "markup_content_type"
    t.integer  "markup_file_size"
    t.datetime "markup_updated_at"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradigm_sounds", force: true do |t|
    t.integer  "paradigm_id"
    t.string   "description"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
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

  create_table "tales", force: true do |t|
    t.string   "name"
    t.text     "tale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_praats", force: true do |t|
    t.integer  "word_id"
    t.string   "description"
    t.string   "markup_file_name"
    t.string   "markup_content_type"
    t.integer  "markup_file_size"
    t.datetime "markup_updated_at"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_sounds", force: true do |t|
    t.integer  "word_id"
    t.string   "description"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.text   "word"
    t.text   "transcription"
    t.text   "translation"
    t.string   "tag"
    t.integer  "dictionary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
