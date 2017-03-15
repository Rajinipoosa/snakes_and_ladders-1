require_relative('./dice.rb')
require_relative('./person.rb')
require_relative('./board.rb')

class Game
  attr_reader :winning_position, :win_status, :player1, :player2
  def initialize(dice, winning_position, player1, player2)
    @dice = dice
    @winning_position = winning_position
    @win_status = false
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @turn_counter = 1
  end

  def game_won?
    for player in @players
      if player.position == @winning_position
        @win_status = true
        player.winner = true
        return @win_status
      end
    end
    return false
  end

  def whose_turn_is_it
    if @turn_counter % 2 == 0
      return @player2
    else
      return @player1
    end


    def take_turn
      active_player = whose_turn_is_it
      move_piece(active_player.position)
      @turn_counter +=1

    end


end
