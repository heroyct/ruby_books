class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :name
      t.string :author
      t.datetime :publish_time
      t.integer :popular

      t.timestamps null: false
    end
  end
end
