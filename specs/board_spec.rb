require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/board.rb')
class BoardTest < Minitest::Test
def setup
@board = Board.new()

end
def test_obstacles_integer
  obstacle_int = @@board_change
  assert_equal(Integer, obstacle_int())
end
end
