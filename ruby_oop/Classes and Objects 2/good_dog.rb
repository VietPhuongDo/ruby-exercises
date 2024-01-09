# frozen_string_literal: true

class GoodDog1
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = DOG_YEARS * age
  end

  # always call when puts, so to_s must be string type
  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

# In most cases, it will use the value returned by Object#to_s instead
sparky = GoodDog1.new('sparky',2)
puts sparky
p sparky # == puts sparky.inspect

class Foo
  def to_s
    "42" # string type
  end
end

foo = Foo.new
puts foo

class Bar
  attr_accessor :xyz

  def initialize
    @xyz = { a:1, b:2}
  end

  def to_s
    'I am a bar Object'
  end
end

bar = Bar.new
puts bar
puts bar.xyz

class MyAwesomeClass
  def self.this_is_a_class_method
  end
end


