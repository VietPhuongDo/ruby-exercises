module MathHelpers
  def exponent(number,exponent)
    return (number ** exponent)
  end
end

class Calculator
  include MathHelpers
  def square_root(number)
    return exponent(number,0.5)
  end
end

c = Calculator.new
puts c.square_root(2)