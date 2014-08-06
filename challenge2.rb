class Orange
  attr_reader :circumference

  def initialize
    @circumference = rand(1..12)
  end

end

class OrangeTree
  attr_accessor :age, :fruit
  attr_reader :max_age, :fruit_bearing_age

  def initialize(args = {})
    @age = args.fetch(:age, 0)
    @fruit = []
    @max_age = args.fetch(:max_age, 30)
    @fruit_bearing_age = args.fetch(:fruit_bearing_age, 5)
  end

  def alive?
    age < max_age
  end

  def age!
    @age += 1
  end

  def grow_fruit!
    fruit << Orange.new if alive? && fruit_bearing?
  end

  def pick_fruit!
    "You picked an orange that's #{fruit.shift.circumference} inches around!"
  end

  def fruit_bearing?
    age >= fruit_bearing_age
  end

end

tree = OrangeTree.new({age: 6})

3.times { tree.grow_fruit! }
p tree.pick_fruit!
p tree.alive?
p tree.age
p tree.age!
