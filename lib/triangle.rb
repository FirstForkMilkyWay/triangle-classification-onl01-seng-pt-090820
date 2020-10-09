class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1,side2,side3)
  end 
  
  def kind 
    #scalene has no equal sides 
    #isosceles has 2 equal sides 
    #equilateral has 3 equal sides 
    
    if side1 != side2 && side1 != side3 && side2 != side3
      return scalene 
    elsif 
      side1 == side2 && side1 != side3 && side2 != side3 
      return isosceles 
    elsif 
      side1 + side2 < side3 
        begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else 
      side1 == side2 && side1 == side3 && side2 == side3 
      return equilateral 
    end 
  
  
  
  class TriangleError < StandardError
    def message 
      puts "TriangleError"
    end 
    
    
end
