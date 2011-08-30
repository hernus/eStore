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

ActiveRecord::Schema.define(:version => 20110716055451) do

  create_table "_invoice_items_old_20110707", :force => true do |t|
    t.string   "product",    :limit => 60
    t.integer  "qty"
    t.float    "price"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_services_old_20110706", :force => true do |t|
    t.string   "name",       :limit => 40
    t.string   "group",      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "code",       :limit => 4
    t.string   "name",       :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "customercode", :limit => 10
    t.string   "name",         :limit => 40
    t.string   "zipcode",      :limit => 4
    t.string   "email",        :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "name",       :limit => 40
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoice_items", :force => true do |t|
    t.string   "product",    :limit => 60
    t.integer  "qty"
    t.float    "price"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "invoice_id"
  end

  create_table "invoices", :force => true do |t|
    t.string   "invoice_number", :limit => 10
    t.integer  "customer_id"
    t.date     "invoice_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "product_code", :limit => 10
    t.string   "description",  :limit => 40
    t.string   "pricetext",    :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency",     :limit => 3
  end

  create_table "services", :force => true do |t|
    t.string   "name",       :limit => 40
    t.string   "group",      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "qty"
  end

# Could not dump table "sqlite_stat1" because of following StandardError
#   Unknown type '' for column 'tbl'

  create_table "stocks", :force => true do |t|
    t.integer  "store_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["product_id"], :name => "index_stocks_on_product_id"
  add_index "stocks", ["store_id"], :name => "index_stocks_on_store_id"

  create_table "stores", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id",         :limit => 20
    t.string   "name",            :limit => 40
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
