require 'pry'
class Triangle
  
  attr_accessor :one, :two, :three, :type
  
  def initialize(one, two, three)
    
    @one = one
    @two = two
    @three = three
    
  end
  
  def kind
    
    if (@one <=0 || @two <=0 || @three <= 0)
     
     binding.pry 
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      # end
    
    else
      
      if ( @one == @two && @two == @three)
         return @type = :equilateral
         
      elsif ( @one == @two || @two == @three || @three == @one)
      
        return @type = :isosceles
        
      else 
        
        return @type = :scalene
        
      end
        
    end
  
  end
  
  class TriangleError < StandardError
    # def message 
    #   "each side must be larger than 0"
    # end
  end
  
  
end
