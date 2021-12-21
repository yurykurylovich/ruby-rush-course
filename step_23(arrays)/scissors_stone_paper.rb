# Напишите игру "камень - ножницы - бумага".
# Пользователь вводит свой вариант в консоли и играет против компьютера.
# И видит результат игры. Компьютер должен выбирать случайный вариант.
#
# введите вариант: 0 - камень, 1 - ножницы, 2 - бумага
#   2
#   Вы выбрали: Бумага
#   Компьютер выбрал: Ножницы
#   Победил Компьютер

names = ['Камень', 'Ножницы', 'Бумага']

computer_choice = rand(3)

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

user_choice = gets.to_i

puts 'Компьютер выбрал: ' + names[computer_choice]

puts 'Вы выбрали: ' + names[user_choice]

if user_choice == computer_choice
  puts 'Ничья'
elsif user_choice == 0 && computer_choice == 1
  puts 'Победили Вы'
elsif user_choice == 1 && computer_choice == 2
  puts 'Победили Вы'
elsif user_choice == 2 && computer_choice == 0
  puts 'Победили Вы'
else # во ВСЕХ ОСТАЛЬНЫХ случаях победа за компом
  puts 'Победил Компьютер'
end
