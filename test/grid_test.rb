require 'test/unit'
require_relative '../src/grid.rb'

class GridTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @grid = Grid.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_grid_has_6_rows_and_6_columns
    assert_equal 6, @grid.rows.count
    assert_equal 6, @grid.rows[0].count
  end
end