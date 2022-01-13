foreheads_path = 'data/foreheads.txt'
eyes_path = 'data/eyes.txt'
noses_path = 'data/noses.txt'
mouths_path = 'data/mouths.txt'

# Проверяем есть ли файл
if File.exist?(foreheads_path)
  file = File.new(foreheads_path, 'r:UTF-8')

  foreheads = file.readlines
  file.close # закрываем файл
else
  abort 'Лбы не найдены'
end

if File.exist?(eyes_path)
  file = File.new(eyes_path, 'r:UTF-8')
  eyes = file.readlines
  file.close
else
  abort 'Глаза не найдены'
end

if File.exist?(noses_path)
  file = File.new(noses_path, 'r:UTF-8')
  noses = file.readlines
  file.close
else
  abort 'Носы не найдены'
end

if File.exist?(mouths_path)
  file = File.new(mouths_path, 'r:UTF-8')
  mouths = file.readlines
  file.close
else
  abort 'Рты не найдены'
end

puts foreheads.sample
puts eyes.sample
puts noses.sample
puts mouths.sample