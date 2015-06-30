def test(table, options = {})
  puts table
  puts options
end

test(:bookshelves, :primary_key => 'bookshelves_id')

