class Complejo
 def initialize(x, y)
 @x = x
 @y = y
 end

 def +(complejo)
	Complejo.new(@x + complejo.to_i, @y + complejo.to_i)
	 
 end
end

c = Complejo.new(1,2)
puts c.+(1)
