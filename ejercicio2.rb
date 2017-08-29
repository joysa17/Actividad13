productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, valor| puts producto }

productos ['cereal'] = 2200

print productos

productos ['bebida'] = 2000

print productos ['bebida']

#4
products_array = productos.to_a
print products_array
puts 'aaa'

#5
productos.delete('galletas')
print productos