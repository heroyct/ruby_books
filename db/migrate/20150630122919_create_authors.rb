class CreateAuthors < ActiveRecord::Migration
  def change
    create_table( :authors, :primary_key => "authors_id", :force => true) do |t|
      t.string :name, :limit => 512, :null => false

      t.timestamps null: false
    end
  end
end
