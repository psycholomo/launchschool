#How big is the room?
#Build a program that asks a user for the length and width of a room in meters and then displays the area of the 
#room in both square meters and square feet.

#Note: 1 square meter == 10.7639 square feet

#Do not worry about validating the input at this time.

def room_size_meters(length,width)
  (length * width).to_f.round(2)
end

def room_size_sqf(length, width)
  (room_size_meters(length, width) * 10.7639).round(2)
end
puts("please enter the length of the room in meters: ")
length = gets.chomp().to_i

puts("please enter the width of the room in meters:")
width = gets.chomp().to_i

room_size = room_size_meters(length, width)
room_sqf = room_size_sqf(length, width)


puts("the area of the room is #{room_size} square meters (#{room_sqf} square feet)")