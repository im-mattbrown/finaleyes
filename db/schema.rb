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

ActiveRecord::Schema.define(version: 20170601012420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organization_infos", force: :cascade do |t|
    t.text     "legal_entity"
    t.text     "legal_entity_background"
    t.text     "purchasing_entity"
    t.text     "purchasing_entity_background_info"
    t.text     "state"
    t.text     "entity_type"
    t.text     "affiliaitons"
    t.text     "contact"
    t.integer  "rfp_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["rfp_id"], name: "index_organization_infos_on_rfp_id", using: :btree
  end

  create_table "rfps", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "organization_info_id"
    t.index ["organization_info_id"], name: "index_rfps_on_organization_info_id", using: :btree
  end

  add_foreign_key "organization_infos", "rfps"
  add_foreign_key "rfps", "organization_infos"
end
