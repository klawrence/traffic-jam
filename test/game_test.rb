require 'test/unit'
require_relative '../src/game.rb'

class GameTest < Test::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_game_has_a_grid
    assert_equal 6, @game.grid.rows.count
  end

  def test_default_game_has_eight_cars
    assert_equal 8, @game.cars.count

    car = @game.cars[0]
    assert_equal 'red', car.colour
    assert_equal 2, car.size
    assert_equal '[2, 2]', car.position.to_s
    assert_equal 'RL', car.orientation
  end
end