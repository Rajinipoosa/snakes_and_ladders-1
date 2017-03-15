require_relative('./dice.rb')
require_relative('./person.rb')
require_relative('./board.rb')

class Game

  def initialize(sides, player_total, winning_position)
    @dice = Dice.new(sides)
    @player_total = player_total
    @winning_position = winning_position
    @win_status = false
    @players = []
  end

  def game_won?
    for player in @players
      if player.position == @winning_position
        @win_status = true
        player.winner = true
      end
    end
  end



end
