require_relative 'game.rb'

class CommandLine
  def initialize
    @game = Game.new
    @game.load_game 'game-1'
  end

  def run
    puts
    puts 'Traffic Jam'
    puts '==========='
    puts

    loop do
      puts @game.grid
      puts
      puts 'enter a car colour or type quit'
      print '> '

      input = gets.chomp.strip
      break if input == 'quit'

      car = @game.car input unless input.empty?
      move(car) if car
    end
  end

  def move(car)
    puts
    puts "moving the #{car}"
    puts 'enter a direction L,R,U,D or leave blank to choose a different car'
    print '> '

    input = gets.chomp.strip
    return if input.empty?

    if @game.move_ok? car, input
      @game.move_car car, input
    else
      puts 'invalid move'
      puts
    end
  end
end