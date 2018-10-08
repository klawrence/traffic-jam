require 'test/unit'
require_relative '../src/grid.rb'
require_relative '../src/car.rb'

class GridTest < Test::Unit::TestCase

  def setup
    @cars = []
    @grid = Grid.new @cars
  end

  def test_grid_has_6_rows_and_6_columns
    assert_equal 6, @grid.rows.count
    assert_equal 6, @grid.rows[0].count
  end

  def test_print_an_empty_grid
    expected = <<END
 . . . . . .
 . . . . . .
 . . . . . . EXIT
 . . . . . .
 . . . . . .
 . . . . . .
END

    assert_equal expected, @grid.to_s
  end

  def test_print_a_grid_with_a_red_car
    @cars << Car.new('red', 2, [2,1], 'RL')
    @grid.update

    expected = <<END
 . . . . . .
 . . . . . .
 . R R . . . EXIT
 . . . . . .
 . . . . . .
 . . . . . .
END

    assert_equal expected, @grid.to_s
  end

  def test_print_a_grid_with_a_lorry
    @cars << Car.new('yellow', 3, [0,5], 'UD')
    @grid.update

    expected = <<END
 . . . . . Y
 . . . . . Y
 . . . . . Y EXIT
 . . . . . .
 . . . . . .
 . . . . . .
END

    assert_equal expected, @grid.to_s
  end

end