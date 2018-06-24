#First Car

=begin
car = {
  type: 'sedan', 
  color: 'blue', 
  mileage: 80_000,

}

car[:year] = 2003

car.delete(:mileage)

#what color?
puts car[:color]

#Labeled Numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |hash, value|
  puts "A #{hash} number is #{value}."
end


#Divided by Two
half_numbers = []
numbers.map {|key, value| half_numbers.push(value / 2)}

p half_numbers

=end

#low medium or high
numbers = {
  high:   100,
  medium: 50,
  low:    10
}


low_numbers = numbers.select! do |key, value|
  value < 25
end

p low_numbers
p numbers

#nested hash

{car: {type: 'sedan',color: 'blue',year:2003},
truck: {type: 'pickup',color: 'red',year:1998}

}
  
