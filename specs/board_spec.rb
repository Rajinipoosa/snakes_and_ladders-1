require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/board.rb')
class BoardTest < Minitest::Test
def setup
@board = Board.new()

end
def test_obstacles
  @board.check_obstacles(5)
  assert_equal(5, @board.obstacles[4])
end
def test_move_obstacles
  @board.move_obstacles()
end
end
