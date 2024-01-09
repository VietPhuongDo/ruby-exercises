# frozen_string_literal: true

class Vikings

  attr_accessor :name, :age, :health, :strength
  @@starting_health

  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = @@starting_health
    @strength = strength
  end

  def self.create_warrior(name)
    age = rand * 20 + 15   # remember, rand gives a random 0 to 1
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Vikings.new(name,age,health,strength)
  end

  def attack(enemy)

  end

  def take_damage(damage)
    self.health -= damage
    # OR we could have said @health -= damage
    self.shout("OUCH!")
  end

  def shout(str)
    puts str
  end

  def sleep
    health += 1 unless health >= 99   # ! FAIL !
  end
end

my_arr = Array.new
p my_arr
oleg = Vikings.new("Oleg", 19, 100, 8)
puts oleg
