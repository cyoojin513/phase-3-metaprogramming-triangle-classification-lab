class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else :scalene
    end
  end

  def valid_triangle
    unless greater_than_zero && valid_lengths
      raise TriangleError
    end
  end

  def greater_than_zero
    a > 0  &&  b > 0  &&  c > 0
  end

  def valid_lengths
    a + b > c  &&  b + c > a  &&  a + c > b
  end

  class TriangleError < StandardError
  end

end
