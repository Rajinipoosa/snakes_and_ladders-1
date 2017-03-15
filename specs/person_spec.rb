require('minitest/autorun')
require('minitest/rg')
require_relative('../lib/person.rb')
class PersonTest < Minitest::Test
  def setup
    @player = Person.new("Rajini")
  end
def test_name

  assert_equal("Rajini",@player.name)
end
end
