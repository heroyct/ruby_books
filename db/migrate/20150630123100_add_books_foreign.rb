require 'helper/MigrationHelper'

class AddBooksForeign < ActiveRecord::Migration

  # 外部キー用のモジュールを使えるように拡張する.
  include MigrationHelper

  def up
    foreign_key("books", "authors_id", "authors")
    foreign_key("books", "bookshelves_id", "bookshelves")
  end
end
