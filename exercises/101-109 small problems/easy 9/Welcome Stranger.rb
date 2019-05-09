# Welcome Stranger
# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, 
# will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting 
# that uses the person's full name, and mentions the person's title.

# Example:

def greetings(name, job)
  str_name = ""
  for i in name
    str_name += i + " "
  end
  puts "Hello #{str_name.squeeze}! Nice to have a #{job[:title]} #{job[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
