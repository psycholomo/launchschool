#1
=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
 new_flintstones = {}
 counter = 0
flintstones.map do |key|
  
 
  
  counter += 1
new_flintstones[key] = counter
end
puts new_flintstones



flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age = 0
ages.select do |name, ages|
age += ages
end
puts age


#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.map do |name, age|
  if age > 100
    ages.delete(name)

  end
end
print ages


#4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

number_array = []
ages.select do |name, number |
  number_array.push(number)
end
puts number_array.min

#### can be simplified down to ages.values.min ####



#5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



flintstones.each do |name|
  if name.include?("Be")
  puts name
   name
end
 
end

flintstones.index { |name| name[0, 2] == "Be" }





#6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  name[0..2]
  end

#7
statement = "The Flintstones Rock".chars
char_hash = {}

statement.select do |char|
  if char == " "
  elsif char_hash.include?(char)
    char_hash[char] += 1
  else
    char_hash[char] = 1
  end
    
end
print char_hash
#8
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#9
words = "the flintstones rock"
capitalize_array = []
words.split.map! do |word|
capitalize_array.push(word.capitalize)

end
capitalize_array.join('')
print capitalize_array.join(' ')
=end
#10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |first_key, second_key |
  ages = second_key['age']
  case ages
  when 0..17 
    then second_key['age_group'] = 'kid'
  when 18..64
    then second_key['age_group'] = 'adult'
 else
     second_key['age_group'] = 'senior'
  end
    
end

 #munsters["Herman"]['age_group'] = 'adult'
 puts munsters