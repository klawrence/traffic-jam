class Grid
  SIZE = 6
  EXIT_ROW = 2

  attr_accessor :rows

  def initialize cars
    @cars = cars
    update
  end

  def reset
    @rows = Array.new(SIZE) { Array.new(SIZE, '.') }
  end

  def update
    reset
    @cars.each do |car|
      position = car.position
      car.size.times do |n|
        row = position[0]
        col = position[1]
        row += n if car.orientation == 'UD'
        col += n if car.orientation == 'RL'

        @rows[row][col] = car.colour[0].upcase
      end
    end
  end

  def to_s
    output = ''

    rows.each_with_index do |columns, index|
      output += columns.map {|value| " #{value}"}.join
      output += ' EXIT' if index == EXIT_ROW
      output += "\n"
    end

    output
  end
end