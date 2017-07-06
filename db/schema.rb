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

ActiveRecord::Schema.define(version: 20170706221539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_documents", force: :cascade do |t|
    t.text     "general_contract_requirements_and_certifications"
    t.text     "reimbursements"
    t.integer  "rfp_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.index ["rfp_id"], name: "index_additional_documents_on_rfp_id", using: :btree
  end

  create_table "contract_terms", force: :cascade do |t|
    t.text     "contracts_awarded_and_pricing_structure"
    t.text     "exclusivity"
    t.text     "term"
    t.text     "applicable_law"
    t.text     "contract_assignment"
    t.text     "entire_agreement"
    t.text     "negotiations"
    t.text     "duration_of_offer"
    t.text     "pricing_and_delivery_schedule"
    t.text     "authorized_signature"
    t.text     "public_information"
    t.integer  "rfp_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["rfp_id"], name: "index_contract_terms_on_rfp_id", using: :btree
  end

  create_table "dates", force: :cascade do |t|
    t.datetime "date_issued"
    t.datetime "schedule"
    t.datetime "proposal_opening"
    t.integer  "rfp_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["rfp_id"], name: "index_dates_on_rfp_id", using: :btree
  end

  create_table "definitions", force: :cascade do |t|
    t.integer  "rfp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rfp_id"], name: "index_definitions_on_rfp_id", using: :btree
  end

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

  create_table "proposer_and_seller_infos", force: :cascade do |t|
    t.text     "proposer_questionnaire"
    t.text     "business_registration_requirements"
    t.integer  "rfp_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["rfp_id"], name: "index_proposer_and_seller_infos_on_rfp_id", using: :btree
  end

  create_table "purchasing_processes", force: :cascade do |t|
    t.text     "notice"
    t.text     "publitcity"
    t.text     "parties"
    t.text     "deviations_and_exceptions"
    t.text     "preaward_conference_information"
    t.text     "duration_of_offer"
    t.text     "response_costs"
    t.text     "proposal_rejection_and_waiver_of_informalities"
    t.text     "discussions"
    t.text     "inquiries"
    t.text     "problem_resolution"
    t.text     "reimbursements"
    t.integer  "rfp_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["rfp_id"], name: "index_purchasing_processes_on_rfp_id", using: :btree
  end

  create_table "rfp_details", force: :cascade do |t|
    t.text     "subject"
    t.text     "number"
    t.text     "description"
    t.text     "requirements"
    t.integer  "rfp_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["rfp_id"], name: "index_rfp_details_on_rfp_id", using: :btree
  end

  create_table "rfps", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "organization_info_id"
    t.index ["organization_info_id"], name: "index_rfps_on_organization_info_id", using: :btree
  end

  create_table "selections", force: :cascade do |t|
    t.text     "selection_criteria"
    t.text     "selection_process"
    t.text     "response_evaluation"
    t.integer  "rfp_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["rfp_id"], name: "index_selections_on_rfp_id", using: :btree
  end

  create_table "t_o_cs", force: :cascade do |t|
    t.integer  "rfp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rfp_id"], name: "index_t_o_cs_on_rfp_id", using: :btree
  end

  add_foreign_key "additional_documents", "rfps"
  add_foreign_key "contract_terms", "rfps"
  add_foreign_key "dates", "rfps"
  add_foreign_key "definitions", "rfps"
  add_foreign_key "organization_infos", "rfps"
  add_foreign_key "proposer_and_seller_infos", "rfps"
  add_foreign_key "purchasing_processes", "rfps"
  add_foreign_key "rfp_details", "rfps"
  add_foreign_key "rfps", "organization_infos"
  add_foreign_key "selections", "rfps"
  add_foreign_key "t_o_cs", "rfps"
end
