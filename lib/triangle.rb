class Triangle
  # write code here
attr_accessor :side_1, :side_2, :side_3

  def initialization(side_1, side_2, side_3)
    @side_1 = side_1
   @side_2 = side_2
   @side_3 = side_3
   @sides_array = [@side_1, @side_2, @side_3]
  end
  def kind
      if lengths.any? {|l| l <= 0 } || (lengths[1] + lengths[2] <= lengths[0] || lengths[0] + lengths[2] <= lengths[1] || lengths[0] + lengths[1] <= lengths[2])
        raise TriangleError
      elsif lengths.all? {|l| l == lengths[0]}
        :equilateral
      elsif lengths[1] == lengths[2] || lengths[0] == lengths[2] || lengths[0] == lengths[1]
        :isosceles
      elsif lengths.all? {|l| lengths.reject {|r| l == r}.all?{|v| v != l}}
        :scalene
      end

    end


  end

  class TriangleError < StandardError

  end