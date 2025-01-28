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

ActiveRecord::Schema.define(version: 2024_04_08_194738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", id: :serial, force: :cascade do |t|
    t.string "attachinariable_type"
    t.integer "attachinariable_id"
    t.string "scope"
    t.string "public_id"
    t.string "version"
    t.integer "width"
    t.integer "height"
    t.string "format"
    t.string "resource_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent"
    t.index ["attachinariable_type", "attachinariable_id"], name: "index_attachinariable"
  end

  create_table "authors", id: :serial, force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "pseudo"
    t.integer "birth"
    t.integer "death"
    t.string "keywords"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "tag"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channels", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.string "name"
    t.text "description"
    t.string "email"
    t.string "link"
    t.boolean "visible", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_channels_on_category_id"
    t.index ["user_id"], name: "index_channels_on_user_id"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.integer "lecture_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "super", default: false, null: false
    t.boolean "visible", default: true, null: false
    t.index ["lecture_id"], name: "index_comments_on_lecture_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "courses", id: :serial, force: :cascade do |t|
    t.integer "author_id"
    t.string "title"
    t.integer "date"
    t.text "description"
    t.integer "category_id"
    t.boolean "visible", default: true, null: false
    t.text "keywords"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_courses_on_author_id"
    t.index ["category_id"], name: "index_courses_on_category_id"
  end

  create_table "courses_themes", id: :serial, force: :cascade do |t|
    t.integer "course_id"
    t.integer "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_themes_on_course_id"
    t.index ["theme_id"], name: "index_courses_themes_on_theme_id"
  end

  create_table "documents", id: :serial, force: :cascade do |t|
    t.integer "lecture_id"
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true, null: false
    t.boolean "payment", default: true, null: false
    t.index ["lecture_id"], name: "index_documents_on_lecture_id"
  end

  create_table "lectures", id: :serial, force: :cascade do |t|
    t.integer "course_id"
    t.string "title"
    t.string "video"
    t.text "description"
    t.string "picture"
    t.boolean "payment", default: false, null: false
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lectures_on_course_id"
  end

  create_table "levels", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", id: :serial, force: :cascade do |t|
    t.string "plan_name"
    t.float "price"
    t.string "css_class"
    t.string "title"
    t.text "description"
    t.boolean "visible"
    t.string "payment"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcomments", id: :serial, force: :cascade do |t|
    t.integer "comment_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_subcomments_on_comment_id"
    t.index ["user_id"], name: "index_subcomments_on_user_id"
  end

  create_table "themes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level_id"
    t.index ["level_id"], name: "index_themes_on_level_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level_id"
    t.string "firstname"
    t.string "lastname"
    t.string "adress"
    t.string "phone"
    t.date "birth"
    t.boolean "visible", default: true, null: false
    t.boolean "admin", default: false
    t.string "stripe_customer_id"
    t.string "plan"
    t.date "paydate"
    t.boolean "deleted", default: false, null: false
    t.boolean "collective", default: false, null: false
    t.string "courses_ids"
    t.float "pricing", default: 0.0
    t.date "expire"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["level_id"], name: "index_users_on_level_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  add_foreign_key "channels", "categories"
  add_foreign_key "channels", "users"
  add_foreign_key "comments", "lectures"
  add_foreign_key "comments", "users"
  add_foreign_key "courses", "authors"
  add_foreign_key "courses", "categories"
  add_foreign_key "courses_themes", "courses"
  add_foreign_key "courses_themes", "themes"
  add_foreign_key "documents", "lectures"
  add_foreign_key "lectures", "courses"
  add_foreign_key "subcomments", "comments"
  add_foreign_key "subcomments", "users"
  add_foreign_key "themes", "levels"
  add_foreign_key "users", "levels"
end
