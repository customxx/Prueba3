=begin 
Modificar T, Q y Car para que Car pueda contar las instancias respectivas de T y Q,
además crear métodos dentro de car para obtener el número de instancias de cada
uno.
Para probar Crear 20 instancias de T y 25 de Q dentro de Main.
=end

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