class Car
  attr_reader :colour, :size, :position, :orientation

  def initialize colour, size, position, orientation
    @colour = colour
    @size = size
    @position = position
    @orientation = orientation
  end

  def to_s
    '#{color} car'
  end
end