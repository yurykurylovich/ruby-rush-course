# Возьмите вашу игру, которую вы сделали в домашнем задании к уроку про «южное бутово»
# (если не делали — самое время сделать). В этой игре теперь защитите программу от неправильного ввода вариантов.
#
# То есть если программа просит выбрать 1. ... 2. ... 3. ..., а пользователь вводит
# 7 или вообще посторонние символы, то программа повторяет свой вопрос и не продолжается пока не будет введен один из доступных вариантов.

choice = nil

# Этот цикл будет повторяться пока user не введет 1 ИЛИ 2 ИЛИ 3,
# nil (начальное значение choice) не подходит, поэтому
# мы как минимум один раз выполним тело цикла.
until choice == 1 || choice == 2 || choice == 3 do
  puts 'Введите число и нажмите Enter:'
  puts '1 – Пойти направо'
  puts '2 – Пойти налево'
  puts '3 – Пойти домой'

  # Записываем то, что выбрал пользователь, переводя его строку в число
  choice = gets.to_i
end

# Проверить, что число лежит в диапазоне можно не записывая такое сложное
# условие. Обе эти конструкции вернут true, если choice лежит от 1 до 3
# (включительно).
#
# choice.between?(1,3)
# (1..3).include?(choice) вернет true, если число