def greet(name)
  puts "Hello, " << name << "!"
end
greet("p")

def even_odd(number)
  unless number.is_a? Numeric
    return "Not number"
  end
  if number % 2 == 0
    return "even number"
  else
    return "odd number"
  end
end

# Chain
phrase = ["be", "to", "not", "or", "be", "to"].reverse.join(" ").capitalize
puts phrase

#predicate method -> ? -> method return true/false
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

#bang method -> ! ->
whisper = "Haha"
puts whisper.downcase! # == whisper = whisper.downcase
def some_method(number)
  number = 7 # this is implicitly returned by the method
end


a = 5
some_method(a)
puts a
# not affect the value of a

a = [1, 2, 3]


# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

#Can mutate the object
