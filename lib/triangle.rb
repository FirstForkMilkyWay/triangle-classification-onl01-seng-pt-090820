class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    #scalene has no equal sides 
    #isosceles has 2 equal sides 
    #equilateral has 3 equal sides 
    
    if side1>0;side2>0; side3>0 && side1 + side2 > side3 && side1 != side2 && side1 != side3 && side2 != side3
        return :scalene 
    elsif 
      side1 == side2 
        return :isosceles 
    elsif 
      side1 == side2 && side1 == side3 && side2 == side3 
      return :equilateral 
    else
      side1 + side2 < side3 
        begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    end 
  
  
  class TriangleError < StandardError
    def message 
      puts "TriangleError"
    end 
  end 
end 

end 
    
