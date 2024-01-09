# frozen_string_literal: true

class My_Car
  attr_accessor  :color
  attr_reader :year
  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
  end

  def brake(number)
    @current_speed -= number
  end

  def current_speed
    puts "You are going at #{@current_speed}"
  end

  #class method
  def self.gas_mileage(gallon,miles)
    puts "#{miles / gallon} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end

  def spray_paint(c)
    self.color = c
  end

  def shut_off
    @current_speed = 0
    puts "Park here"
  end
end

My_Car.gas_mileage(27,35)
puts My_Car.new('2020','yellow','Toyota')