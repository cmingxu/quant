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

ActiveRecord::Schema.define(version: 20150608090038) do

  create_table "staffs", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "branch_id",          limit: 4
    t.string   "login",              limit: 255
    t.string   "encrypted_password", limit: 255
    t.string   "salt",               limit: 255
    t.string   "avatar",             limit: 255
    t.string   "last_login_ip",      limit: 255
    t.datetime "last_login_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "mobile",             limit: 255
  end

  create_table "user_wechats", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.string   "openid",         limit: 255
    t.string   "nickname",       limit: 255
    t.string   "sex",            limit: 255
    t.string   "language",       limit: 255
    t.string   "province",       limit: 255
    t.string   "city",           limit: 255
    t.datetime "subscribe_time"
    t.string   "unionid",        limit: 255
    t.string   "headimg",        limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",              limit: 255
    t.string   "name",               limit: 255
    t.string   "salt",               limit: 255
    t.string   "address",            limit: 255
    t.string   "phone",              limit: 255
    t.string   "encrypted_password", limit: 255
    t.string   "last_login_at",      limit: 255
    t.string   "last_login_ip",      limit: 255
    t.string   "source",             limit: 255
    t.integer  "last_product_id",    limit: 4
    t.integer  "last_quantity",      limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "openid",             limit: 255
  end

  create_table "wechat_user_activities", force: :cascade do |t|
    t.integer  "wechat_user_id", limit: 4
    t.string   "openid",         limit: 255
    t.string   "activity",       limit: 255
    t.string   "sub_activity",   limit: 255
    t.text     "params",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wechat_users", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.string   "status",         limit: 255
    t.string   "openid",         limit: 255
    t.string   "nickname",       limit: 255
    t.integer  "sex",            limit: 4
    t.string   "language",       limit: 255
    t.string   "province",       limit: 255
    t.string   "city",           limit: 255
    t.string   "country",        limit: 255
    t.string   "headimg",        limit: 255
    t.text     "remark",         limit: 65535
    t.datetime "subscribe_time"
    t.string   "unionid",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
