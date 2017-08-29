#Se tiene un hash con el inventario de un negocio de computadores.

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,"Impresoras": 6}

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
   input = gets.chomp.split(',').map { |elem| elem.strip  }
   hash[input[0]] = input[1].to_i
   print hash
end

option = 0
while option != '7' 

puts "Ingresar 1 para agregar"
puts "Ingresar 2 para eliminar"
puts "Ingresar 3 para actualizar"
puts "Ingresar 4 para ver stock"
puts "Ingresar 5 para ver mayor cantidad stock"
puts "Ingresar 6 si existe item en inventario"
puts "Ingresar 7 para salir"

option = gets.chomp

puts case option
	when '1'
			add_element(inventario)
	when '2'

	when '3'
	when '4'
	when '5'
	when '6' 
  end
end 			
			
			
			
			
			
