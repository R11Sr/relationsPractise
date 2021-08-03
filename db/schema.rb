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

ActiveRecord::Schema.define(version: 2021_08_03_151431) do

  create_table "post_authorings", force: :cascade do |t|
    t.integer "post_author_id", null: false
    t.integer "authored_post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["authored_post_id"], name: "index_post_authorings_on_authored_post_id"
    t.index ["post_author_id"], name: "index_post_authorings_on_post_author_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "editor_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["editor_id"], name: "index_posts_on_editor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "post_authorings", "authored_posts"
  add_foreign_key "post_authorings", "post_authors"
  add_foreign_key "posts", "editors"
end
