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

ActiveRecord::Schema[7.0].define(version: 2023_05_15_142905) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

# Could not dump table "PGadmin" because of following StandardError
#   Unknown type 'aclitem' for column 'Name'

  create_table "clients", force: :cascade do |t|
    t.string "client_id_type", null: false
    t.bigint "client_id_id", null: false
    t.integer "weight"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id_type", "client_id_id"], name: "index_clients_on_client_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "type_user_id", null: false
    t.string "position"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_user_id"], name: "index_employees_on_type_user_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "type_inventory_id", null: false
    t.integer "type_machine"
    t.string "muscle_group"
    t.date "date_purchase"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_inventory_id"], name: "index_inventories_on_type_inventory_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_id_type", null: false
    t.bigint "invoice_id_id", null: false
    t.integer "amount"
    t.datetime "date"
    t.string "details"
    t.integer "type"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id_type", "invoice_id_id"], name: "index_invoices_on_invoice_id"
  end

  create_table "people", force: :cascade do |t|
    t.bigint "gym_id", null: false
    t.string "name"
    t.string "lastname_one"
    t.string "lastname_two"
    t.integer "type_document"
    t.string "num_document"
    t.date "date_birth"
    t.date "date_entry"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_people_on_gym_id"
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "gym_id", null: false
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_plans_on_gym_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_id_type", null: false
    t.bigint "product_id_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_type", "product_id_id"], name: "index_products_on_product_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_inventories", force: :cascade do |t|
    t.bigint "gym_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_type_inventories_on_gym_id"
  end

  create_table "type_users", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_type_users_on_person_id"
  end

  add_foreign_key "employees", "type_users"
  add_foreign_key "inventories", "type_inventories"
  add_foreign_key "people", "gyms"
  add_foreign_key "plans", "gyms"
  add_foreign_key "type_inventories", "gyms"
  add_foreign_key "type_users", "people"
end
