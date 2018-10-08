require_relative 'game.rb'

class CommandLine
  def initialize
    @game = Game.new
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
    loop do
      puts
      puts "moving the #{car}"
      puts 'enter a direction L,R,U,D or leave blank to choose a different car'
      print '> '

      input = gets.chomp.strip
      break if input.empty?

      if @game.move_car car, input
        puts @game.grid
      else
        puts 'invalid move'
        puts
      end
    end
  end
end