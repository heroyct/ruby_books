class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :name
      t.string :author

      t.timestamps null: false
    end
  end
end
