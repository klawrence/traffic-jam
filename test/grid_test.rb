require 'test/unit'
require_relative '../src/grid.rb'

class GridTest < Test::Unit::TestCase

  def setup
    @grid = Grid.new
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
end