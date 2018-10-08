class Car
  attr_reader :colour, :size, :position, :orientation

  def initialize colour, size, position, orientation
    @colour = colour
    @size = size
    @position = position
    @orientation = orientation
  end

  def initial_letter
    colour[0].upcase
  end

  def move direction
    position[1] -= 1
  end

  def to_s
    "#{colour} car"
  end
end