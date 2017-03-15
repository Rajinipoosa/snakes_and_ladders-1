class Person
  attr_reader :name
  attr_accessor :position
  def initialize(name)
    @name = name
    @position = 0

  end

  def move_piece(position)
    dice = Dice.new(6)
    dice_roll = dice.roll
    position += dice_roll
  end


end
