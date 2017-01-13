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

ActiveRecord::Schema.define(version: 20170113161237) do

  create_table "curriculums", force: :cascade do |t|
    t.string   "name"
    t.integer  "specialty_id"
    t.integer  "study_cycle_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["specialty_id"], name: "index_curriculums_on_specialty_id"
    t.index ["study_cycle_id"], name: "index_curriculums_on_study_cycle_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "enrollment"
    t.string   "name"
    t.string   "last_name"
    t.string   "mothers_last_name"
    t.string   "address"
    t.string   "suburb"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.date     "birthdate"
    t.string   "sex"
    t.integer  "group_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "curriculum_id"
    t.integer  "study_cycle_id"
    t.index ["curriculum_id"], name: "index_students_on_curriculum_id"
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["study_cycle_id"], name: "index_students_on_study_cycle_id"
  end

  create_table "study_cycles", force: :cascade do |t|
    t.date     "start_at"
    t.date     "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "semester"
    t.integer  "curriculum_id"
    t.integer  "teacher_id"
    t.integer  "dependency_subject_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["curriculum_id"], name: "index_subjects_on_curriculum_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "mothers_last_name"
    t.text     "perfil"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin_role",             default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
