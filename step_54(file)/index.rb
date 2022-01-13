file_name = ARGV[0]

# Если имя файла не было передано в качестве аргумента, сообщаем об этом
# пользователю и завершаем программу.
if file_name == nil
  abort 'Укажите имя файла в качестве аргумента программы'
end

# Если файл по указанному адресу не найден, сообщаем об этом пользователю и
# завершаем программу.
unless File.exist?(file_name)
  abort 'Файл не найден!'
end

f = File.new(file_name, "r:UTF-8")
lines = f.readlines
f.close
# Пишем пользователю, что файл удалось открыть
puts 'Открыли файл: ' + file_name

empty_lines_counter = 0

last_five_lines = []

# Запускаем цикл по всем элементам массива lines. Чтобы понять,
# является ли строка одной из последних пяти, нам нужен индекс текущего элемента
# в массиве. Поэтому мы воспользуемся методом массива each_with_index
#
# http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-each_with_index
#
# Этот цикл очень похож на for line in lines, только на каждом витке цикла в
# переменной index у нас будет лежать порядковый номер элемента в массиве
# (конечно же, начиная с 0).
lines.each_with_index do |line, index|
  # Если строка состоит из одного символа "\n", увеличиваем счетчик пустых
  # строк.
  if line == "\n"
    empty_lines_counter += 1
  end

  # Если индекс элемента отличается от длины массива на 5 или меньше, добавляем
  # этот элемент в массив последних 5 строк.
  if lines.size - index <= 5
    last_five_lines << line
  end
end

puts 'Всего строк: ' + lines.length.to_s
puts 'Пустых строк: ' + empty_lines_counter.to_s
puts 'Последние 5 строк файла: '
puts

for line in last_five_lines
  puts line
end
