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

ActiveRecord::Schema.define(version: 20160105191406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "added_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "stock_manager_id"
    t.integer  "quantity",         null: false
    t.date     "date_added",       null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "added_ingredients", ["ingredient_id"], name: "index_added_ingredients_on_ingredient_id", using: :btree
  add_index "added_ingredients", ["stock_manager_id"], name: "index_added_ingredients_on_stock_manager_id", using: :btree

  create_table "chefs", force: :cascade do |t|
    t.string   "first_name", limit: 20,  null: false
    t.string   "last_name",  limit: 20,  null: false
    t.string   "email",      limit: 50,  null: false
    t.string   "password",   limit: 300, null: false
    t.date     "DOB"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "ingredient_name", limit: 40, null: false
    t.string   "unit",            limit: 15, null: false
    t.float    "unit_cost",                  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "ingredients_recipes", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "recipe_id",     null: false
    t.integer "quantity"
  end

  add_index "ingredients_recipes", ["ingredient_id", "recipe_id"], name: "index_ingredients_recipes_on_ingredient_id_and_recipe_id", using: :btree
  add_index "ingredients_recipes", ["recipe_id", "ingredient_id"], name: "index_ingredients_recipes_on_recipe_id_and_ingredient_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "recipe_name",        limit: 40, null: false
    t.float    "portion_cost",                  null: false
    t.float    "sub_cost",                      null: false
    t.float    "waste_cost",                    null: false
    t.float    "selling_price",                 null: false
    t.integer  "chef_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "recipes", ["chef_id"], name: "index_recipes_on_chef_id", using: :btree

  create_table "stock_managers", force: :cascade do |t|
    t.string   "first_name", limit: 20,  null: false
    t.string   "last_name",  limit: 20,  null: false
    t.string   "email",      limit: 50,  null: false
    t.string   "password",   limit: 300, null: false
    t.date     "DOB"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "added_ingredients", "ingredients", on_update: :cascade
  add_foreign_key "added_ingredients", "stock_managers", on_update: :cascade
  add_foreign_key "recipes", "chefs", on_update: :cascade
end
