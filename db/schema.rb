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

ActiveRecord::Schema.define(version: 2015_06_30_122852) do

  create_table "authors", primary_key: "authors_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", limit: 512, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", primary_key: "books_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "authors_id"
    t.bigint "bookshelves_id"
    t.string "name", limit: 512, null: false
    t.datetime "publish_date"
    t.boolean "enabled", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "popular"
    t.index ["authors_id"], name: "fk_books_authors"
    t.index ["bookshelves_id"], name: "fk_books_bookshelves"
  end

  create_table "bookshelves", primary_key: "bookshelves_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "code", limit: 12
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors", column: "authors_id", primary_key: "authors_id", name: "fk_books_authors"
  add_foreign_key "books", "bookshelves", column: "bookshelves_id", primary_key: "bookshelves_id", name: "fk_books_bookshelves"
end
