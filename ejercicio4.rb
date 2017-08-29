personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

#1Se pide generar un hash
h = Hash[personas.zip edades]
puts h

#2 Crear un método que reciba el hash y devuelva la edad del hash pasado como argumento.
def recibe(hash, key)
	hash[key]    
end 

puts recibe(h, "Carolina")