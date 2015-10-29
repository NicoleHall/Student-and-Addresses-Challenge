
ActiveRecord::Schema.define(version: 20151028235229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "student_id"
    t.boolean "is_current", null: false
    t.string  "street",     null: false
    t.string  "city",       null: false
    t.string  "state",      null: false
  end

  add_index "addresses", ["student_id"], name: "index_addresses_on_student_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.text    "first_name"
    t.text    "last_name"
    t.boolean "is_alumnus", default: false
  end

  add_foreign_key "addresses", "students"
end
