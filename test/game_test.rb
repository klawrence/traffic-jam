require 'test/unit'
require_relative '../src/game.rb'

class GameTest < Test::Unit::TestCase

  def setup
    @game = Game.new
    @game.load_game 'game-1'
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

  def test_get_car_by_its_colour
    car = @game.car('O')
    assert_equal 'orange', car.colour
  end

  def test_can_move_a_car_left
    car = @game.car('O')
    assert_equal [1, 2], car.position

    @game.move_car car, 'L'
    assert_equal [1, 1], car.position
  end

  def test_can_move_a_car_down
    car = @game.car('Y')
    assert_equal [0, 5], car.position

    @game.move_car car, 'D'
    assert_equal [1, 5], car.position
  end

  def test_move_is_valid_if_the_destination_is_empty
    car = @game.car('O')
    assert_equal [1, 2], car.position

    assert @game.move_ok? car, 'L'
  end

  def test_move_is_valid_if_the_destination_is_out_of_bounds
    car = @game.car('G')
    assert_equal [0, 4], car.position

    refute @game.move_ok? car, 'U'
  end
end