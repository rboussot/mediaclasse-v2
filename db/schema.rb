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

ActiveRecord::Schema.define(version: 20160822141411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "pseudo"
    t.integer  "birth"
    t.integer  "death"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_comments_on_lecture_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.integer  "date"
    t.text     "description"
    t.integer  "category_id"
    t.boolean  "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["author_id"], name: "index_courses_on_author_id", using: :btree
    t.index ["category_id"], name: "index_courses_on_category_id", using: :btree
  end

  create_table "courses_themes", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_themes_on_course_id", using: :btree
    t.index ["theme_id"], name: "index_courses_themes_on_theme_id", using: :btree
  end

  create_table "lectures", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "title"
    t.string   "video"
    t.text     "description"
    t.boolean  "payment"
    t.boolean  "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_lectures_on_course_id", using: :btree
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "level_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "adress"
    t.string   "phone"
    t.date     "birth"
    t.boolean  "visible"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["level_id"], name: "index_users_on_level_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "comments", "lectures"
  add_foreign_key "comments", "users"
  add_foreign_key "courses", "authors"
  add_foreign_key "courses", "categories"
  add_foreign_key "courses_themes", "courses"
  add_foreign_key "courses_themes", "themes"
  add_foreign_key "lectures", "courses"
  add_foreign_key "users", "levels"
end
