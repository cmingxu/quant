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

ActiveRecord::Schema.define(version: 20150709051637) do

  create_table "curr_quote_minlines", force: :cascade do |t|
    t.integer  "market_id",   limit: 4
    t.string   "market_name", limit: 255
    t.integer  "stock_id",    limit: 4
    t.string   "stock_code",  limit: 255
    t.datetime "kpsj"
    t.datetime "spsj"
    t.decimal  "open",                    precision: 10, scale: 2
    t.decimal  "close",                   precision: 10, scale: 2
    t.decimal  "high",                    precision: 10, scale: 2
    t.decimal  "low",                     precision: 10, scale: 2
    t.decimal  "deal",                    precision: 10, scale: 2
    t.decimal  "total_price",             precision: 10, scale: 2
    t.datetime "happen_at"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.string   "en_name",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "perdeals", force: :cascade do |t|
    t.integer  "stock_id",   limit: 4
    t.string   "stock_code", limit: 255
    t.datetime "happen_at"
    t.decimal  "hqzjcj",                 precision: 10, scale: 2
    t.decimal  "hqzjsl",                 precision: 10, scale: 2
    t.decimal  "hqcjje",                 precision: 10, scale: 2
    t.decimal  "hqcjbs",                 precision: 10, scale: 2
    t.boolean  "bsflag",     limit: 1
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "realmtimes", force: :cascade do |t|
    t.datetime "happen_at"
    t.integer  "market_id",        limit: 4
    t.string   "mark_code",        limit: 255
    t.string   "stock_code",       limit: 255
    t.string   "stock_short_name", limit: 255
    t.decimal  "zrsp",                         precision: 10, scale: 2
    t.decimal  "jrkp",                         precision: 10, scale: 2
    t.decimal  "zjcj",                         precision: 10, scale: 2
    t.decimal  "cjsl",                         precision: 10, scale: 2
    t.decimal  "cjje",                         precision: 10, scale: 2
    t.decimal  "cjbs",                         precision: 10, scale: 2
    t.decimal  "zgcj",                         precision: 10, scale: 2
    t.decimal  "zdcj",                         precision: 10, scale: 2
    t.decimal  "syl1",                         precision: 10, scale: 2
    t.decimal  "syl2",                         precision: 10, scale: 2
    t.decimal  "jsd1",                         precision: 10, scale: 2
    t.decimal  "jsd2",                         precision: 10, scale: 2
    t.decimal  "gycc",                         precision: 10, scale: 2
    t.decimal  "sjw5",                         precision: 10, scale: 2
    t.decimal  "ssl5",                         precision: 10, scale: 2
    t.decimal  "sjw4",                         precision: 10, scale: 2
    t.decimal  "ssl4",                         precision: 10, scale: 2
    t.decimal  "sjw3",                         precision: 10, scale: 2
    t.decimal  "ssl3",                         precision: 10, scale: 2
    t.decimal  "sjw2",                         precision: 10, scale: 2
    t.decimal  "ssl2",                         precision: 10, scale: 2
    t.decimal  "sjw1",                         precision: 10, scale: 2
    t.decimal  "ssl1",                         precision: 10, scale: 2
    t.decimal  "bjw1",                         precision: 10, scale: 2
    t.decimal  "bsl1",                         precision: 10, scale: 2
    t.decimal  "bjw2",                         precision: 10, scale: 2
    t.decimal  "bsl2",                         precision: 10, scale: 2
    t.decimal  "bjw3",                         precision: 10, scale: 2
    t.decimal  "bsl3",                         precision: 10, scale: 2
    t.decimal  "bjw4",                         precision: 10, scale: 2
    t.decimal  "bsl4",                         precision: 10, scale: 2
    t.decimal  "bjw5",                         precision: 10, scale: 2
    t.decimal  "bsl5",                         precision: 10, scale: 2
    t.decimal  "cjav",                         precision: 10, scale: 2
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

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

  create_table "stocks", force: :cascade do |t|
    t.integer  "market_id",   limit: 4
    t.string   "market_name", limit: 255
    t.string   "code",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
