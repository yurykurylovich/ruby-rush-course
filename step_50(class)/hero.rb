class Hero
  def initialize(hero)
    @valiant = hero
    @result = nil
  end

  def find_valiant
    puts 'Here'
    case @valiant.downcase
    when 'бэтмэн'
      @result = 'Джокер'
    when 'шерлок холмс'
      @result = 'Профессор Мориарти'
    when 'месси'
      @result = 'Роналду'
    else
      @result = 'Не удалось найти антипода'
    end
  end

  def get_valiant
    find_valiant
    return @result
  end
end