class Dice

  def initialize(sides)
    @sides = sides
  end

  def roll
    roll_numbers = (1..@sides).to_a
    return roll_numbers.sample()
  end

end
