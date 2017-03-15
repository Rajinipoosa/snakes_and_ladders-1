require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/person.rb')
require_relative('../lib/board.rb')

class PersonTest < Minitest::Test
  def setup
    @player1 = Person.new("Rajini")
    @player2 = Person.new("Caroline")
    @my_board = Board.new
  end

  def test_name
    assert_equal("Rajini",@player1.name)
  end

  def test_move_lands_on_obstacle
    new_position = 12
    assert_equal(24, @player1.move_piece(12))
  end


end
