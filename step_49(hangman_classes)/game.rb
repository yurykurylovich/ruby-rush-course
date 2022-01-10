class Game

  def initialize(word)
    @letters = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(word)
    if word == nil || word == ''
      abort 'Для игры введите загаданное слово в качестве аргумента при запуске программы'
    end

    return word.split('')
  end

  # Метод, возвращающий статус игры (геттер для @status)
  #
  #  0 – игра активна
  # -1 – игра закончена поражением
  #  1 – игра закончена победой
  def status
    return @status
  end

  def next_step(letter)

    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(letter) || @bad_letters.include?(letter)
      @status = 1
    end

    if @letters.include?(letter)
      @good_letters << letter

      if @good_letters.uniq.sort == @letters.uniq.sort
        @status = 1
      end
    else
      @bad_letters << letter
      @errors += 1

      if @errors >= 7
        @status = -1
      end
    end
  end

  def ask_next_letter
    puts "\nInsert next letter"

    letter = ''
    while letter == ''
      letter = STDIN.gets.chomp
    end

    next_step(letter)
  end

  # Методы, так называемые accessors или геттеры. Смысл каждого метода — только
  # предоставить доступ к внутренним переменным экземпляра класса. Без таких
  # методов, например к @letters, @errors нет доступа ни у кого, кроме самого объекта данного класса
  def errors
    # Слово return можно опустить, если это последняя строка в методе. Последнее вычисленное значение в методе и будет возвращено.
    @errors
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

end