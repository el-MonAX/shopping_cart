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

ActiveRecord::Schema.define(version: 2018_07_05_125253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "zip"
    t.string "phone"
    t.string "address_type"
    t.integer "user_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shopping_cart_addresses_on_order_id"
  end

  create_table "shopping_cart_coupons", force: :cascade do |t|
    t.string "code"
    t.decimal "discount"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_credit_cards", force: :cascade do |t|
    t.string "number"
    t.string "name_on_card"
    t.string "month_year"
    t.string "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_deliveries", force: :cascade do |t|
    t.string "name"
    t.string "time"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_order_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "product_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shopping_cart_order_items_on_order_id"
  end

  create_table "shopping_cart_orders", force: :cascade do |t|
    t.string "number"
    t.integer "status"
    t.integer "user_id"
    t.bigint "coupon_id"
    t.bigint "delivery_id"
    t.bigint "credit_card_id"
    t.datetime "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coupon_id"], name: "index_shopping_cart_orders_on_coupon_id"
    t.index ["credit_card_id"], name: "index_shopping_cart_orders_on_credit_card_id"
    t.index ["delivery_id"], name: "index_shopping_cart_orders_on_delivery_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "shopping_cart_addresses", "shopping_cart_orders", column: "order_id"
  add_foreign_key "shopping_cart_order_items", "shopping_cart_orders", column: "order_id"
  add_foreign_key "shopping_cart_orders", "shopping_cart_coupons", column: "coupon_id"
  add_foreign_key "shopping_cart_orders", "shopping_cart_credit_cards", column: "credit_card_id"
  add_foreign_key "shopping_cart_orders", "shopping_cart_deliveries", column: "delivery_id"
end
