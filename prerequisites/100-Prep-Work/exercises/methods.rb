#print me (Part 1)

=begin
  


def print_me

  puts "I'm printing within the method!"

end

print_me




def print_me

  return "I'm printing within the method!"

end

puts print_me



def hello
  return "Hello"
end

def world
  return "World"
end

puts hello + " " + world


#greeting through methods

def greet
  puts "#{hello} #{world}"
end

greet




def car(brand, model)
  puts "#{brand} #{model}"

end

car("Toyota","Corolla")



daylight = [true, false].sample

def time_of_day(bool)
  if bool == true
    puts "It's daytime!"
  else puts "It's nighttime!"

  end



end


time_of_day(daylight)


def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."




def assign_name(name = 'Bob')

  return name

end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'



def add(num1, num2)
  return num1 + num2
end

def multiply(num1, num2)
  return num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36





names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(name_array)


  return name_array[rand(name_array.size)] 
end

def activity(activity_array)
  return activity_array[rand(activity_array.size)]
end

def sentence(name, activity)
  puts "#{name} went #{activity} today!"

end



puts sentence(name(names), activity(activities))


=end