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

ActiveRecord::Schema[7.2].define(version: 2024_10_26_200801) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "status"
    t.string "app_type"
    t.string "version"
    t.datetime "last_deployed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "status", null: false
    t.bigint "station_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "priority"
    t.index ["station_id"], name: "index_blocks_on_station_id"
  end

  create_table "blocks_stations", id: false, force: :cascade do |t|
    t.bigint "block_id", null: false
    t.bigint "station_id", null: false
    t.index ["block_id", "station_id"], name: "index_blocks_stations_on_block_id_and_station_id"
    t.index ["station_id", "block_id"], name: "index_blocks_stations_on_station_id_and_block_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "parent_id"
    t.boolean "is_active", default: true
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "status"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.string "group_type", null: false
    t.bigint "workflow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_group"
    t.text "description"
    t.index ["workflow_id"], name: "index_groups_on_workflow_id"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "user_id"
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "groups_workflows", id: false, force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "workflow_id"
    t.index ["group_id", "workflow_id"], name: "index_groups_workflows_on_group_id_and_workflow_id", unique: true
    t.index ["group_id"], name: "index_groups_workflows_on_group_id"
    t.index ["workflow_id"], name: "index_groups_workflows_on_workflow_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name", null: false
    t.string "color"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_labels_on_name", unique: true
  end

  create_table "metro_lines", force: :cascade do |t|
    t.string "name", null: false
    t.string "color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metro_lines_stations", id: false, force: :cascade do |t|
    t.bigint "metro_line_id"
    t.bigint "station_id"
    t.index ["metro_line_id"], name: "index_metro_lines_stations_on_metro_line_id"
    t.index ["station_id"], name: "index_metro_lines_stations_on_station_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.text "permissions", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.boolean "is_active", default: true
    t.integer "permission_level"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "views", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "view_type"
    t.boolean "is_active", default: true
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workflows", force: :cascade do |t|
    t.string "name", null: false
    t.text "steps", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "status"
    t.index ["name"], name: "index_workflows_on_name", unique: true
  end

  add_foreign_key "blocks", "stations"
  add_foreign_key "groups", "workflows"
  add_foreign_key "users", "roles"
end
