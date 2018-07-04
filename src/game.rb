require_relative 'grid.rb'

class Game
  attr_reader :grid

  def initialize
    @grid = Grid.new
  end
end