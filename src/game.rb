require_relative 'grid.rb'
require_relative 'car.rb'

class Game
  attr_reader :grid, :cars

  def initialize
    @grid = Grid.new
    @cars = [
        Car.new('red', 2, [2,1], 'RL')
    ]
  end
end