base_dir = File.expand_path(File.join(File.dirname(__FILE__), "../.."))
db_dir  = File.join(base_dir, "db/migrate")
test_dir  = File.join(base_dir, "test")

$LOAD_PATH.unshift(db_dir)
$LOAD_PATH.unshift(test_dir)

require 'test_helper'
require 'test'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_author_create
    CreateAuthor.new.change
  end
end
