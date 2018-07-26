class InitSchema < ActiveRecord::Migration[5.2]
  def up
    create_table "authors", primary_key: "authors_id", force: :cascade do |t|
      t.string   "name",       limit: 512, null: false
      t.datetime "created_at",             null: false
      t.datetime "updated_at",             null: false
    end

    create_table "books", primary_key: "books_id", force: :cascade do |t|
      t.integer  "authors_id",     limit: 8
      t.integer  "bookshelves_id", limit: 8
      t.string   "name",           limit: 512,                 null: false
      t.datetime "publish_date"
      t.boolean  "enabled",        limit: 1,   default: false, null: false
      t.datetime "created_at",                                 null: false
      t.datetime "updated_at",                                 null: false
      t.integer  "popular",        limit: 4
    end

    add_index "books", ["authors_id"], name: "fk_books_authors", using: :btree
    add_index "books", ["bookshelves_id"], name: "fk_books_bookshelves", using: :btree

    create_table "bookshelves", primary_key: "bookshelves_id", force: :cascade do |t|
      t.string   "code",       limit: 12
      t.datetime "created_at",            null: false
      t.datetime "updated_at",            null: false
    end

    add_foreign_key "books", "authors", column: "authors_id", primary_key: "authors_id", name: "fk_books_authors"
    add_foreign_key "books", "bookshelves", column: "bookshelves_id", primary_key: "bookshelves_id", name: "fk_books_bookshelves"
  end
end
