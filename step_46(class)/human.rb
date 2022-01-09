class Human
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
  end

  def old?
    @age >= 60
  end

  def full_name
    if old?
      "#{@first_name} #{@middle_name}"
    else
      @first_name
    end
  end

  def age
    @age
  end
end