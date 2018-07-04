require_relative 'grid.rb'
require_relative 'car.rb'

class Game
  attr_reader :grid, :cars

  def initialize
    @cars = [Game.default_red_car]
    @grid = Grid.new @cars
  end

  def self.default_red_car
    Car.new('red', 2, [2, 1], 'RL')
  end
end