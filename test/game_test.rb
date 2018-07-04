require 'test/unit'
require_relative '../src/game.rb'

class GameTest < Test::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_game_has_a_grid
    assert_equal 6, @game.grid.rows.count
  end
end