class Person
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age

    @film = nil
  end

  def old?
    return @age >= 60
  end

  def full_name
    if old?
      return "#{@first_name} #{@middle_name}"
    else
      return @first_name
    end
  end

  def age
    return @age
  end

  # Это сеттер — метод, который используется для записывания фильма
  # в экземпляр класса Person.
  #
  # Знак «=» в конце названия метода позволяет вызвать
  # этот метод с оператором присваивания. Если объявить такой метод у класса
  # Person, то в основной программе можно написать
  #
  # person = Person.new(...)
  # person.film = Film.new(...)
  #
  def film=(film)
    @film = film
  end

  # Аксессор для переменной экземпляра @film
  def film
    return @film
  end
end