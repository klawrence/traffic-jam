require 'test/unit'
require_relative '../src/game.rb'

class GameTest < Test::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_game_has_a_grid
    assert_equal 6, @game.grid.rows.count
  end

  def test_default_game_has_just_one_red_car
    assert_equal 1, @game.cars.count

    car = @game.cars[0]
    assert_equal 'red', car.colour
    assert_equal 2, car.size
    assert_equal '[2, 1]', car.position.to_s
    assert_equal 'RL', car.orientation
  end
end