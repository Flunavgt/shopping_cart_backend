# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_01_161631) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "photo"
    t.integer "power"
    t.integer "weight"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bike_id", null: false
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.index ["bike_id"], name: "index_reservations_on_bike_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "bikes"
  add_foreign_key "reservations", "users"
end

# Table "products" {
#   "id" varchar
#   "brand" string
#   "model" string
#   "photo" string
#   "power" integer
#   "weight" integer
#   "price" integer
#   "price_two" integer
#   "created_at" datetime
#   "updated_at" datetime
#   "description" text
# }

# Table "operations" {
#   "id" varchar
#   "user_id" bigint
#   "producto_id" bigint
#   "Units" integer
#   "created_at" datetime
#   "updated_at" datetime
#   "start_date" datetime
#   "end_date" datetime
#   "type" string
# }

# Table "users" {
#   "id" varchar
#   "name" string
#   "email" string
#   "created_at" datetime
#   "updated_at" datetime
# }

# Ref: operations.producto_id < products.id
# Ref: users.id < operations.user_id

# add_foreign_key “operations”, “products”
# add_foreign_key “operations", "users"
