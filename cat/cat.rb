class Cat
def initialize(name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time
end

def eats_at
  if @meal_time > 12
    "#{@meal_time}AM"
  else
    "#{@meal_time}PM"
  end
end

def meow
    "my name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
end
end



cat_1 = Cat.new('fred', 'catfood', 4)
cat_2 = Cat.new('john', 'shit', 5)

puts cat_1.meow
