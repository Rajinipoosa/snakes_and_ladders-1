require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/game.rb')
require_relative('../lib/board.rb')


class GameTest < MiniTest::Test

  def setup
    @dice = Dice.new(6)
    @player1 = Person.new("Caroline")
    @player2 = Person.new("Rajini")
    @new_game = Game.new(@dice, 25, @player1, @player2)
    @board = Board.new
  end

  def test_player_has_won
    @new_game.player1.position = 25
    assert_equal(true, @new_game.game_won?)
  end



end
