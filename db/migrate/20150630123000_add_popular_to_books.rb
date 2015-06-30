class AddPopularToBooks < ActiveRecord::Migration
  def change
    add_column :books, :popular, :integer
  end
end
