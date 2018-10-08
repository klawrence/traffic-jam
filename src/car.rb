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
    @position = @position.dup

    case direction[0].upcase
      when 'L'
        position[1] -= 1
        destination = position
      when 'R'
        position[1] += 1
        destination = [position[0], position[1]+size]
      when 'U'
        position[0] -= 1
        destination = position
      when 'D'
        position[0] += 1
        destination = [position[0]+size, position[1]]
      else
        destination = nil
    end

    destination
  end

  def to_s
    "#{colour} car"
  end
end