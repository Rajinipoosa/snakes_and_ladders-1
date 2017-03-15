require('minifest/autorun')
require('minifest/rg')
require_relative('../person.rb')
class PersonTest < Minitest::Test
  def setup
    @person = Person.new(name,position)
  end


end
