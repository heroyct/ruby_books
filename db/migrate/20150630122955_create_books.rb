class CreateBooks < ActiveRecord::Migration
  def change
    create_table(:books, :primary_key => "books_id", :force => true) do |t|
      t.integer :authors_id
      t.integer :bookshelves_id

      t.string :name, :limit => 512, :null => false
      t.datetime :publish_date
      t.boolean :enabled, :null => false, :default => false

      t.timestamps null: false
    end
  end
end
