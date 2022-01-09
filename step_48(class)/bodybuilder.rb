class BodyBuilder
  def initialize
    @triceps = 0
    @biceps = 0
    @deltovidka = 0
  end

  def pump(muscle)
    case muscle
    when 'triceps'
      @triceps += 1
    when 'biceps'
      @biceps += 1
    when 'deltovidka'
      @deltovidka += 1
    end
  end

  def show_muscles
    puts "Бицепсы: #{@biceps}"
    puts "Трицепсы: #{@triceps}"
    puts "Дельтовидка: #{@deltovidka}"
  end
end