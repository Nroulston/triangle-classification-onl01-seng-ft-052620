require "pry"
class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@a <= 0 || @b <= 0 || @c <= 0) || (a + b <= c || b + c <= a || a + c <= b)
      raise TriangleError
    end
    return :equilateral  if a == b && b == c
    return :isosceles if (a != b && b == c) || (a != b && a == c) || (a != c && a == b)
    return :scalene if a != b && b != c  
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
