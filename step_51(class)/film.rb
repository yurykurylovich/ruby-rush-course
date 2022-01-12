class Film
  def initialize
    @director = nil
    @films = []
  end

  def add_film(film)
    @films << film
  end

  def add_director(director)
    @director = director
  end

  def get_result
    puts "Recommended film: #{@films.sample}"
    puts "Directed by #{@director}"
  end
end