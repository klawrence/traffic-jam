class Grid
  SIZE = 6
  EXIT_ROW = 2

  attr_accessor :rows

  def initialize
    @rows = Array.new(SIZE) { Array.new(SIZE) }
  end

  def to_s
    output = ''

    rows.each_with_index do |columns, index|
      output += columns.map {|_column| ' .'}.join
      output += ' EXIT' if index == EXIT_ROW
      output += "\n"
    end

    output
  end
end