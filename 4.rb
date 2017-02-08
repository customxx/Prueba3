class Complejo
 def initialize(x, y)
 @x = x
 @y = y
 end

 def a(complejo)
 Complejo.new(@x + complejo, @y + complejo)
 end
end

c = Complejo.new(1,2)
c.a(1)
