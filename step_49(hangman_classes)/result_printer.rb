class ResultPrinter

  def print_status(game)
    cls

    puts "\nWord: #{get_word_for_print(game.letters, game.good_letters)}"

    puts "Mistakes: #{game.bad_letters.join(', ')}"

    print_hangman(game.errors)

    if game.status == -1
      puts "\nYou are lost\n"
      puts "Correct answer: " + game.letters.join('')
      puts
    elsif game.status == 1
      puts "Congratulations! You are win!"
    else
      puts "Remain mistakes: " + (7 - game.errors).to_s
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ''

    for item in letters do
      if good_letters.include?(item)
        result += item + ' '
      else
        result += '__ '
      end
    end
    return  result
  end

  def print_hangman(errors)

    case errors
    when 0
      puts '
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
    when 1
      puts '
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 2
      puts '
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 3
      puts '
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 4
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 5
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      '

    when 6
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    when 7
      puts '
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    end
  end

  def cls
    system('clear') || system('cls')
  end

end