class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 <= 0) || (@side2) <= 0 || (@side3 <= 0)
      raise TriangleError
    elsif (@side1 + @side2 <= 3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      raise TriangleError
    end
    
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      else (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end
