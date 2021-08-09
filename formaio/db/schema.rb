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

ActiveRecord::Schema.define(version: 2021_08_09_092641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_form_components", force: :cascade do |t|
    t.string "name"
    t.boolean "is_text_area"
    t.bigint "answer_form_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "properties"
    t.index ["answer_form_type_id"], name: "index_answer_form_components_on_answer_form_type_id"
  end

  create_table "answer_form_fields", force: :cascade do |t|
    t.string "name"
    t.string "field_type"
    t.bigint "answer_form_component_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_form_component_id"], name: "index_answer_form_fields_on_answer_form_component_id"
  end

  create_table "answer_form_posible_answers", force: :cascade do |t|
    t.string "answer"
    t.bigint "answer_form_field_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_form_field_id"], name: "index_answer_form_posible_answers_on_answer_form_field_id"
  end

  create_table "answer_form_types", force: :cascade do |t|
    t.string "name"
    t.bigint "client_form_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_form_type_id"], name: "index_answer_form_types_on_client_form_type_id"
  end

  create_table "answer_forms", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.decimal "total_price"
    t.integer "answer_form_type_id"
    t.text "properties"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "client_form_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "icon"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "client_form_categories_types", id: false, force: :cascade do |t|
    t.bigint "client_form_type_id", null: false
    t.bigint "client_form_category_id", null: false
  end

  create_table "client_form_posible_answers", force: :cascade do |t|
    t.string "answer"
    t.string "section"
    t.bigint "client_form_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "info"
    t.index ["client_form_question_id"], name: "index_client_form_posible_answers_on_client_form_question_id"
  end

  create_table "client_form_questions", force: :cascade do |t|
    t.string "question"
    t.string "answer_type"
    t.boolean "answers_are_sections"
    t.text "info"
    t.boolean "is_required"
    t.bigint "client_form_section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_form_section_id"], name: "index_client_form_questions_on_client_form_section_id"
  end

  create_table "client_form_sections", force: :cascade do |t|
    t.string "name"
    t.boolean "is_default"
    t.decimal "extra_price"
    t.bigint "client_form_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_form_type_id"], name: "index_client_form_sections_on_client_form_type_id"
  end

  create_table "client_form_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_activ"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "client_forms", force: :cascade do |t|
    t.string "name"
    t.decimal "total_price"
    t.string "status"
    t.boolean "is_payed"
    t.integer "client_form_type_id"
    t.text "properties"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "city"
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "answer_form_components", "answer_form_types"
  add_foreign_key "answer_form_fields", "answer_form_components"
  add_foreign_key "answer_form_posible_answers", "answer_form_fields"
  add_foreign_key "answer_form_types", "client_form_types"
  add_foreign_key "client_form_posible_answers", "client_form_questions"
  add_foreign_key "client_form_questions", "client_form_sections"
  add_foreign_key "client_form_sections", "client_form_types"
end
