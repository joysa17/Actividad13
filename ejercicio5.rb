meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#1
h = Hash[meses.zip ventas]
puts h

#2 
h1 = h.invert

#3
puts h1.max_by {|key, value| key}