# Написать метод, который выводит на экран строку, состоящую из звездочек *. Длина строки (количество звездочек) должно быть параметром метода.
# Программа должна спросить у пользователя в консоли длину строки и вывести на экран нужную строчку используя этот метод.

# Сколько вам звезд на погоны?
# 17
# Вот ваши звезды :)
# *****************

puts 'How many stars do you want?'
stars_num = gets.chomp.to_i

def make_stars(num)
  result = ''
  while result.length < num do
    result += '*'
  end
  puts result
end

make_stars(stars_num)