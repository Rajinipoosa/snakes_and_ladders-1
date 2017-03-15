require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/dice.rb')

class DiceTest < MiniTest::Test

 def setup
   @my_dice = Dice.new(6)
 end

 def test_dice_roll_integer
   dice_roll = @my_dice.roll
   assert_equal(Integer, dice_roll.class())
 end

 def test_roll_within_range
   dice_roll_2 = @my_dice.roll
   assert_equal(true,dice_roll_2 <= 6)
 end


end
