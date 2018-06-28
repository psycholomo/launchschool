a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#take array and turn it into a new array using map,flatten and split

new_array = a.map do |word|
word.split

end

new_array.flatten!

p new_array