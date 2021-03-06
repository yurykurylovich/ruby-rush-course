# В городском парке живут соловьи. Однако, их редко слышно, потому что они поют только когда температура на улице от 22 до 30 градусов в любое время года. Летом они поют при температуре от 15 до 35 градусов.
# Напишите программу, которая определяет, поют в данный момент соловьи или нет.
# Текущую температуру и время года программа должна брать из аргументов командной строки. А если их не передали — спрашивать у пользователя.

temperature = ARGV[0]

if temperature == nil
  # если мы используем аргументы из командной строки, то
  # надо вызывать не просто gets, а STDIN.gets (особенность языка Ruby).
  puts 'Какая сейчас температура?'
  temperature = STDIN.gets.to_i
else
  temperature = temperature.to_i
end

season = ARGV[1]

if season == nil
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = STDIN.gets.to_i
else
  season = season.to_i
end

if season == 1
  if temperature >= 15 && temperature <= 35
    puts 'Скорее идите в парк, соловьи поют!'
  else
    puts 'Увы, даже летом для соловьев сейчас неподходящие условия'
  end
else
  if temperature >= 22 && temperature <= 30
    puts 'Скорее в парк! Там поют соловьи!'
  else
    puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
  end
end