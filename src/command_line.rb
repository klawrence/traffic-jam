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
      return if input.nil? || input.empty? || input == 'quit'

      puts "Move #{input} car"
    end
  end
end