#1
class T
 def method1()
 end
end
o = T.new
o.method1
#2
class T
 def self.method1()
 end
end
T.method1

#3

module Prueba
 	A=5
end
#4
class Complejo
 def initialize(x, y)
 @x = x
 @y = y
 end

 def self.a(complejo)
 Complejo.new(@x + complejo, @y + complejo)
 end
end
#5
class T
	attr_accessor :o 
 def method1
 	@o = rand(1..10)
 end
end
class Q < T
	 attr_accessor :h,:o
	 def initialize
	 	@q 
	 end
	 def hola
	 	@q = @o
	 end
end
a = Q.new
a.method1
print o = a.hola
print o.class
#6
module Stockable
	attr_accessor :stock
	def has_stock?
		return @stock > 0
	end
end
module Priceable
 attr_accessor :price
 def discoutend_price(discount)
	@price - @price * discount
 end
end
class Product
 include Stockable
 include Priceable
 def initialize(price,stock)
 @price = price
 @stock = stock
 end
end
a = Product.new(2000,5)
print a.has_stock?	attr_accessor :stock
	def has_stock?
		if @stock > 0 
		end
	end
end
module Priceable
 attr_accessor :price
 def discoutend_price(discount)
	@price - @price * discount
 end
end
class Product
 include Stockable
 include Priceable
 def initialize(price,stock)
 @price = price
 @stock = stock
 end
end
a = Product.new(2000,5)
print a.has_stock?
#7
class Car
 @@t_instances = 0
 @@q_instances = 0
 def self.get_number_of_instances1
 	@@t_instances
 end
 def self.get_number_of_instances2
 	@@q_instances
 end
end
class T < Car
	def initialize()
	 	@@t_instances +=1
	 end
end
class Q < T
	def initialize()
 		@@q_instances +=1
 	end
end

20.times do |i|
 T.new
end
 puts T.get_number_of_instances1
25.times do |i|
	Q.new
end
puts Q.get_number_of_instances2