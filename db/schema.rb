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

ActiveRecord::Schema.define(version: 20140328002627) do

  create_table "comment_votes", force: true do |t|
    t.integer "comment_id"
    t.integer "idea_id"
    t.boolean "upvote"
  end

  create_table "comments", force: true do |t|
    t.integer "user_id"
    t.integer "idea_id"
    t.boolean "for_or_against"
    t.string  "content"
    t.integer "vote_count"
  end

  create_table "idea_votes", force: true do |t|
    t.integer "user_id"
    t.integer "idea_id"
    t.boolean "like"
  end

  create_table "ideas", force: true do |t|
    t.string  "title"
    t.string  "content"
    t.string  "url"
    t.integer "user_id"
    t.integer "vote_count"
    t.integer "comment_count"
    t.integer "total_score"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "email"
  end

end
