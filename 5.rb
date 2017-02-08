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