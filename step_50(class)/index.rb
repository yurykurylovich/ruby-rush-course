require_relative 'hero'

puts 'Чьего антипода вы хотите узнать?'
hero = STDIN.gets.chomp
answer = Hero.new(hero)

puts answer.get_valiant
