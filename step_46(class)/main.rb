require_relative 'human'

young_person = Human.new('Сергей', 'Михайлович', 41)
old_person = Human.new('Константин', 'Львович', 61)

puts 'У нас есть два человека:'

puts young_person.full_name
puts "И ему #{young_person.age} — #{young_person.old? ? 'пожилой' : 'молодой'}"

puts old_person.full_name
puts "И ему #{old_person.age} — #{old_person.old? ? 'пожилой' : 'молодой'}"