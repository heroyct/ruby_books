class CreateBookshelves < ActiveRecord::Migration
  def change
    create_table( :bookshelves, :primary_key => 'bookshelves_id', :force => true) do |t|
      t.column :code, "char(12)"

      t.timestamps null: false
    end
  end
end
