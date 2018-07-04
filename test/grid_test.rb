require 'test/unit'
require_relative '../src/grid.rb'

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

  def test_print_a_grid_with_a_car
    @cars << Game.default_red_car
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

end