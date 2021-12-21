# Написать программу, которая выводит массив чисел от 1 до N.
# И выводит сумму всех чисел этого массива. Число N спрашивается у пользователя из консоли.

arr = []

puts 'Insert N'
num = gets.to_i

index = 1
sum = 0

while index <= num do
  arr << index
  sum += index
  index += 1
end

puts arr.to_s
puts 'Sum of numbers: ' + sum.to_s


