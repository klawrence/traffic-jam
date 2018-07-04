require_relative 'grid.rb'

class CommandLine
  def initialize
    @grid = Grid.new
  end

  def run
    puts
    puts 'Traffic Jam'
    puts '==========='
    puts

    loop do
      puts @grid
      puts
      puts 'enter a car colour or type quit'
      print '> '

      input = gets.chomp.strip
      return if input.nil? || input.empty? || input == 'quit'

      puts "Move #{input} car"
    end
  end
end