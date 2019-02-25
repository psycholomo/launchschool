#Exclusive Or

def xor?(unit_one, unit_two)
  if unit_one != unit_two
    true
  elsif unit_two == false && unit_one == false
    false
  else false
  end
end
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

puts(xor?(5.odd?, 4.even?))
puts(xor?(5.even?, 4.even?))
puts(xor?(5.odd?, 4.odd?))
puts(xor?(5.even?, 4.odd?))