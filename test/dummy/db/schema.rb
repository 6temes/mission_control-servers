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

ActiveRecord::Schema[7.1].define(version: 2024_02_05_031009) do
  create_table "mission_control_servers_projects", force: :cascade do |t|
    t.string "title"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_mission_control_servers_projects_on_token", unique: true
  end

  create_table "mission_control_servers_services", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "hostname", null: false
    t.decimal "cpu", precision: 8, scale: 2
    t.decimal "mem_used", precision: 8, scale: 2
    t.decimal "mem_free", precision: 8, scale: 2
    t.string "disk_free"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hostname"], name: "index_mission_control_servers_services_on_hostname"
    t.index ["project_id"], name: "index_mission_control_servers_services_on_project_id"
  end

  add_foreign_key "mission_control_servers_services", "mission_control_servers_projects", column: "project_id"
end
