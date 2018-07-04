require_relative 'grid.rb'
require_relative 'car.rb'

class Game
  attr_reader :grid, :cars

  RED_CAR = Car.new('red', 2, [2, 2], 'RL')
  GREEN_CAR = Car.new('green', 2, [0, 4], 'UD')
  ORANGE_CAR = Car.new('orange', 2, [1, 2], 'RL')
  BLUE_CAR = Car.new('blue', 2, [2,4], 'UD')
  SALMON_CAR = Car.new('salmon', 2, [4,3], 'UD')
  PURPLE_CAR = Car.new('purple', 2, [4,4], 'LR')
  YELLOW_LORRY = Car.new('yellow', 3, [0, 5], 'UD')
  BROWN_LORRY = Car.new('brown', 3, [3,2], 'UD')

  DEFAULT_GAME = [
      RED_CAR,
      GREEN_CAR,
      ORANGE_CAR,
      BLUE_CAR,
      SALMON_CAR,
      PURPLE_CAR,
      YELLOW_LORRY,
      BROWN_LORRY,
  ]

  def initialize
    @cars = DEFAULT_GAME
    @grid = Grid.new @cars
  end

end