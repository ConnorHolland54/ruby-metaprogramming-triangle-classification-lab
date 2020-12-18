# class Triangle
#   # write code here
#   attr_accessor :one, :two, :three, :equilateral

#   def initialize(one, two, three)
#     @one = one
#     @two = two
#     @three = three
#   end

#   def kind
#     if @one == @two && @three == @two
#       return :equilateral
#     elsif @two == @three || @one == @three || @one == @two
#       return :isosceles
#     elsif @one != @two && @one != @three && @two != @three
#       return :scalene
#     end
#   end
  


#   class TriangleError < StandardError

#   end


# end

class Triangle
  # write code here
  attr_accessor :one, :two, :three, :equilateral

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
      if @one == 0 || @two == 0 || @three == 0
          raise TriangleError
      end

      if @one < 0 || @two < 0 || @three < 0
        raise TriangleError
      end

      if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
        raise TriangleError
      end
      
      
      
      
    if @one == @two && @three == @two
      return :equilateral
    elsif @two == @three || @one == @three || @one == @two
      return :isosceles
    elsif @one != @two && @one != @three && @two != @three
      return :scalene
    end
  end
  


  class TriangleError < StandardError

  end


end
