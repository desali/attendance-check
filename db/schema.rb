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

ActiveRecord::Schema.define(version: 2018_06_30_072152) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "attendants", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.integer "group_id"
    t.integer "student_id"
    t.integer "subject_id"
    t.index ["group_id", "student_id", "subject_id"], name: "index_attendants_on_group_id_and_student_id_and_subject_id", unique: true
    t.index ["group_id"], name: "index_attendants_on_group_id"
    t.index ["student_id"], name: "index_attendants_on_student_id"
    t.index ["subject_id"], name: "index_attendants_on_subject_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "teacher_id"
    t.integer "group_count"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "course_id"
  end

  create_table "groups_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "group_id", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.integer "group_id"
    t.integer "student_id"
    t.integer "subject_id"
    t.index ["group_id", "student_id", "subject_id"], name: "index_notifications_on_group_id_and_student_id_and_subject_id", unique: true
    t.index ["group_id"], name: "index_notifications_on_group_id"
    t.index ["student_id"], name: "index_notifications_on_student_id"
    t.index ["subject_id"], name: "index_notifications_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.index ["email"], name: "index_students_on_email", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.index ["email"], name: "index_teachers_on_email", unique: true
  end

end
