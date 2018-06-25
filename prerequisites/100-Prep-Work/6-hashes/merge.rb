food = {meat: "steak", vegetable: "cabbage"}
weight = {meat_weight: 10, vegetable_weight: 15}

p food.merge(weight)
puts food
puts weight

p food.merge!(weight)

puts food
puts weight
