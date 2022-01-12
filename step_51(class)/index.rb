require_relative 'film'

puts 'What director do you like?'
director = STDIN.gets.chomp
film = Film.new
film.add_director(director)

puts 'Write his movie you like'
film_1 = STDIN.gets.chomp
film.add_film(film_1)

puts 'Write his movie you like'
film_2 = STDIN.gets.chomp
film.add_film(film_2)

puts 'Write his movie you like'
film_3 = STDIN.gets.chomp
film.add_film(film_3)

film.get_result
