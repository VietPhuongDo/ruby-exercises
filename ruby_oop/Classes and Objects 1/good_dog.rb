# frozen_string_literal: true


class GoodDog

  attr_accessor :name, :height, :weight

  def initialize(name,height,weight)
    @name = name
    @height = height
    @weight = weight
  end

  def speak
    puts "#{@name} say arf!"
  end

  def change_info(n,h,w)
    self.name = n # calling setter method not creating local variable(name = n)
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.
