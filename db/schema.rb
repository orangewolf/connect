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

ActiveRecord::Schema.define(version: 20151019190240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "donations", force: :cascade do |t|
    t.decimal  "amount",     precision: 10, scale: 2
    t.integer  "need_id"
    t.integer  "donor_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "donors", force: :cascade do |t|
    t.string   "email",                          default: "",    null: false
    t.string   "encrypted_password",             default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                  default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "facebook_image_url"
    t.string   "customer_id"
    t.string   "braintree_last_4"
    t.string   "braintree_payment_method_token"
    t.boolean  "is_admin",                       default: false
  end

  add_index "donors", ["email"], name: "index_donors_on_email", unique: true, using: :btree
  add_index "donors", ["reset_password_token"], name: "index_donors_on_reset_password_token", unique: true, using: :btree

  create_table "html_diffs", force: :cascade do |t|
    t.integer  "work_program_id"
    t.text     "params"
    t.text     "diff",            default: ""
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "to"
    t.text     "from"
    t.string   "to_sha"
    t.string   "from_sha"
  end

  add_index "html_diffs", ["work_program_id"], name: "index_html_diffs_on_work_program_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "need_id"
    t.string   "body"
    t.datetime "sent_at"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "subject"
  end

  create_table "needs", force: :cascade do |t|
    t.string   "title"
    t.datetime "posted_at"
    t.text     "description"
    t.decimal  "amount_requested",   precision: 10, scale: 2
    t.decimal  "amount_donated",     precision: 10, scale: 2, default: 0.0
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "title"
    t.string   "tagline"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "redactor_assets", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable", using: :btree
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type", using: :btree

  create_table "references", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "status"
    t.string   "publisher"
    t.string   "author"
    t.string   "href"
    t.string   "edDraft"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sent_messages", force: :cascade do |t|
    t.integer  "donor_id"
    t.integer  "message_id"
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "work_programs", force: :cascade do |t|
    t.string  "name"
    t.string  "repository_url"
    t.integer "working_area_id"
    t.string  "default_branch"
  end

  add_index "work_programs", ["working_area_id"], name: "index_work_programs_on_working_area_id", using: :btree

  create_table "working_areas", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "working_group_id"
  end

  add_index "working_areas", ["working_group_id"], name: "index_working_areas_on_working_group_id", using: :btree

  create_table "working_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "key"
  end

end
