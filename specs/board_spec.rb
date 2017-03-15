require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/board.rb')
class BoardTest < Minitest::Test
def setup
@board = Board.new()

end
def test_obstacles
  @board.check_obstacles(5)
  assert_equal(5, @boards.obstacles[keys])
end
end
