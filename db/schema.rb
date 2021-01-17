# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_17_065340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborators", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["task_id"], name: "index_collaborators_on_task_id"
    t.index ["user_id"], name: "index_collaborators_on_user_id"
  end

  create_table "friend_requests", force: :cascade do |t|
    t.integer "receiver_id"
    t.integer "requestor_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "list_id", null: false
    t.string "name"
    t.string "description"
    t.string "date"
    t.string "time"
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_tasks_on_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "collaborators", "tasks"
  add_foreign_key "collaborators", "users"
  add_foreign_key "lists", "users"
  add_foreign_key "tasks", "lists"
end
