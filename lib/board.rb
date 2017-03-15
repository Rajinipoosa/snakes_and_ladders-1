class Board
  attr_reader :obstacles
def initialize
  @obstacles = {
    4 => 5,
    12 => 24,
    30 => -10,
    40 => 22
  }

end
def check_obstacles(num)
 return @obstacles[num]

end

end
