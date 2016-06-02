class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      return "#{@meal_time}" + "PM"

    else @meal_time < 12
      return @meal_time.to_s + "AM"
    end
  end

  def meow
    return "My name is #{@name} and i eat #{@preferred_food} at #{eats_at}"
  end

end

fluffy = Cat.new("Fluffy","Tuna", 12)

snowy = Cat.new("Snowy","Salmon", 1)

puts fluffy.meow
puts snowy.meow
