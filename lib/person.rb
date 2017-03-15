require_relative('./dice')
require_relative('./board')

class Person
  attr_reader :name
  attr_accessor :position
  attr_accessor :winner
  def initialize(name)
    @name = name
    @position = 0
    @winner = false

  end

  def move_piece(position)
    @board = Board.new
    dice = Dice.new(6)
    dice_roll = dice.roll
    new_position = position + dice_roll
    if @board.obstacles.key?(new_position)
      new_position += @board.obstacles[new_position]
    end
    return new_position
  end


end
