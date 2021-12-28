# Вспомните программу, где нужно за 3 попытки угадать число от 0 до 16, загаданное компьютером.
# Теперь когда вы знакомы с методами — перепишите программу так, чтобы не повторять три раза одну и ту же конструкцию if,
# вместо нее нужно три раза вызвать один метод.
# Убедитесь, что программа работает точно так же, как и старая.

def check(answer, num)
  if answer == num
    puts 'You are win!'
    exit
  end

  if answer < num
    puts 'Number is bigger'
  else
    puts 'Number is lower'
  end

  if (num - answer).abs < 3
    puts 'Cold'
  else
    puts 'Hot'
  end
end

guess_num = rand(16)
puts 'Guess the number from 0 to 15'

guess = gets.to_i
check(guess, guess_num)

guess = gets.to_i
check(guess, guess_num)

puts 'You are lost, looser!'




