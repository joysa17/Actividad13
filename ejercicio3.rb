h = {x: 1, y:2}

#1
h[:z] = 3
puts h

#2
h[:x] = 5
puts h

#3
h.delete(:y)
print h

#4
h.each_key {|key| puts "yeeah" if key == :z}
#puts 'yeeah' if h.include?(:z)

#5
puts h.invert