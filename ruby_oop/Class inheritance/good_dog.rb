class Parent
  def greeting
    puts "Hello from Parent class"
  end
end

class Child < Parent
  def greeting
    puts "Hello from Child class"
  end
end

# Creating an instance of Child class
child_instance = Child.new

# Calling the overridden method
child_instance.greeting
puts (Time.now.year - 1997)
