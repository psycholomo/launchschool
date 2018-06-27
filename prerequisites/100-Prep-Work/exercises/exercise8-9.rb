hash1 = {:test => 1}
hash2 = {test: 2}

h = {a:1,b:2,c:3,d:4}

puts h[:b]
h[:e] = 5


h.each do |key, value|
  if value < 3.5
   
    h.delete(key)
  end

end

p h

