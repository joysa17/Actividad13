menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1. Obtener el plato mas caro.

puts menu.max_by {|key, value| value}

puts '---------------------------------------'

#2. Obtener el plato mas barato.

puts menu.min_by {|key, value| value}
puts '---------------------------------------'

#3. Sacar el promedio del valor de los platos.

suma = menu.values.inject(0) {|suma,x| suma + x}
puts suma/menu.size
puts '---------------------------------------'

#4. Crear un arreglo con solo los nombres de los platos.

dishes = menu.keys
puts dishes
puts '---------------------------------------'

#5. Crear un arreglo con solo los valores de los platos.

prices = menu.values
puts prices
puts '---------------------------------------'

#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

#menu.each {|k,v| menu[k] = v *1.19}
menu_with_tax = menu.map{|k,v| v * 1.19}
puts menu_with_tax
puts '---------------------------------------'

#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra

#special = menu.select{|k,v| k.split.size > 1 }
#special_with_discount = special.map { |k,v| v = v * 0.8  }
#puts special_with_discount

#special = menu.select{|k,v| k.split.size > 1 }
#special.each { |k,v| special [k] = v * 0.8  }
#print special

menu = { "Ramen" => 3.57, "Dal Makhani" => 4.76, "Coffee" => 2.38 }
special ={}
menu.each do |k,v|
	if k.split.size > 1
		special[k] = v*0.8
	end
end 
puts special
