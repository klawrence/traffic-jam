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
    case direction[0].upcase
      when 'L'
        position[1] -= 1
      when 'R'
        position[1] += 1
      when 'U'
        position[0] -= 1
      when 'D'
        position[0] += 1
      else
        false
    end
  end

  def to_s
    "#{colour} car"
  end
end