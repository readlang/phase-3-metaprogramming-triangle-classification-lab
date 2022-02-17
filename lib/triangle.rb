class Triangle
  # write code here

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  class TriangleError < StandardError
    puts "ERROR!!!"
  end

  def kind
    if self.s1 == 0 || self.s2 == 0 || self.s3 == 0
      raise TriangleError
    end

    if self.s1 + self.s2 <= self.s3 || self.s1 + self.s3 <= self.s2 || self.s2 + self.s3 <= self.s1
      raise TriangleError
    end


   if self.s1 == self.s2 && self.s1 == self.s3
     return :equilateral
   elsif self.s1 == self.s2 || self.s1 == self.s3 || self.s2 == self.s3
     return :isosceles
   else
     return :scalene
   end
  end

  

  

end
