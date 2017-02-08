=begin
Crear el módulo Stockable, este módulo introduce la variable stock y debe tener un
método llamado has_stock?, que devuelva true si el stock es mayor que cero.
=end
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
print a.has_stock?