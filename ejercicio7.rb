#Se tiene un hash con el inventario de un negocio de computadores.

inventario = {"Notebooks": 4, "Pc Escritorio": 6, "Routers": 10,"Impresoras": 6}

#Se pide:
#1. Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según
#eso el programa realizará distintas funciones.

#2. Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y
#agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una
#coma.
#Ejemplo del input: "Pendrives, 100"

#3. Si el usuario ingresa 2, podrá eliminar un item.

#4. Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).

#5. Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que
#hay en el negocio.

#6. Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.

#7. Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
#el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa
#responderá "Sí".

#8. El programa debe repertirse hasta que el usuario ingrese 7 (salir).
def add_element(hash)
   puts "agregar un item, ejemplo: Pendrives, 100"
   input = gets.split(',').map { |elem| elem.strip  }
   #get me dará un string y con el split me entregará el resultado en un array
   hash[input[0]] = input[1].to_i
   print hash
end

def delete_element(hash)
	print hash,"\n"
	puts "Para eliminar un item ingrese"
	choice = gets.chomp.split.map(&:capitalize).join(' ')
	hash.delete(choice.to_sym){|elem| puts "#{h} No se encuentra en el inventario"}
	puts choice 
end

def update_element(hash)
	print hash,"\n"
	puts"Ingresar item a modificar"
	updated_element = gets.chomp.split.map(&:capitalize).join(' ')
	puts"Ingresar item a stock"
	updated_stock = gets
	hash[updated_element.to_sym] = updated_stock.to_i
	print hash	
end

def stock_summary(hash)
	stock = hash.values.inject(0) { |sum, v| sum + v }
	puts "El inventario actualmente tiene #{stock} "
	
end 

def max_stock(hash)
	max = hash.max_by {|key, value| value}
	puts "El producto con mayor stock es: #{max[0].to_s}"
end

def item_exist(hash)
	puts "Ingrese un producto"
	item = gets.chomp.split.map(&:capitalize).join(' ').to_sym
	result = hash[item]	
	puts "El producto #{item.to_s}"result ?  
	     "esta en el inventario" : 
	     "no esta en el inventario"
	 
end

option = 0
while option != '7' 

puts "Ingresar 1 para agregar"
puts "Ingresar 2 para eliminar"
puts "Ingresar 3 para actualizar"
puts "Ingresar 4 para ver resumen del stock"
puts "Ingresar 5 para ver mayor cantidad stock"
puts "Ingresar 6 si existe item en inventario"
puts "Ingresar 7 para salir"

option = gets.chomp

puts case option
	when '1'
			add_element(inventario)
	when '2'
			delete_element(inventario)
	when '3'
		    update_element(inventario)
	when '4'
			stock_summary(inventario)
	when '5'
		    max_stock(inventario)
	when '6' 
			item_exist(inventario)
  end
end 			
			
			
			
			
			
