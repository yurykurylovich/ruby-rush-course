require_relative 'game'
require_relative 'result_printer'

printer = ResultPrinter.new

puts 'Hangman game'
sleep 1

word = ARGV[0]

game = Game.new(word)

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)