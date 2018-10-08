require_relative 'grid.rb'
require_relative 'car.rb'

class Game
  attr_reader :grid

  def initialize
    @cars = {}
    @grid = Grid.new cars
  end

  def load_game _id
    new_cars = [
        Car.new('red', 2, [2, 2], 'RL'),
        Car.new('green', 2, [0, 4], 'UD'),
        Car.new('orange', 2, [1, 2], 'RL'),
        Car.new('blue', 2, [2, 4], 'UD'),
        Car.new('salmon', 2, [4, 3], 'UD'),
        Car.new('purple', 2, [4, 4], 'LR'),
        Car.new('yellow', 3, [0, 5], 'UD'),
        Car.new('magenta', 3, [3, 2], 'UD'),
    ]

    new_cars.each do |car|
      @cars[car.initial_letter] = car
    end

    @grid = Grid.new cars
  end

  def cars
    @cars.values
  end

  def car colour
    @cars[colour[0].upcase]
  end

  def move_car car, direction
    car.move direction
    @grid.update
  end

  def move_ok? car, direction
    dup = car.dup
    destination = dup.move direction
    @grid.destination_ok? destination
  end

end