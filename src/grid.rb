class Grid
  SIZE = 6

  attr_accessor :rows

  def initialize
    @rows = Array.new(SIZE) { Array.new(SIZE) }
  end

end