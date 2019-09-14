# Consider the following code:
class Pet
  attr_reader :pet_name, :animal
  def initialize(animal, pet_name)
    @animal = animal
    @pet_name = pet_name
  end
end


class Shelter
  @@adopted = []
  def initialize
  
  end 

  def adopt(owner, pet)
    @@adopted << [owner, pet]
    owner.pet_count

  end

  def print_adoptions
    print_hash = {}

    @@adopted.each do |owner, pet|
    if print_hash.key?(owner.name)
     print_hash[owner.name] << [pet.pet_name, pet.animal]
     else 
    print_hash[owner.name] = [[pet.pet_name, pet.animal]]
    end

  end
  
  print_hash.each do |key, value|
    puts "#{key} has adopted the following pets:" 
    value.each do |v|
      puts "#{v[1]} named #{v[0]}"
    end
    puts ""
  end

end
# new_arr = [["josh","mindy"],["josh", "buff"], ["James", "lucky"], ["James", "narf"],["James", "fluffy"]]
# new_arr.each do |arr|
#     puts arr[1]
#     if  new_hash.key?(arr[0])
#         new_hash[arr[0]] << arr[1]
#     else
#         new_hash[arr[0]] = [arr[1]]
#     end
# end
# puts new_hash
#     end

#   end

end


class Owner

  attr_reader :name
  attr_accessor :pet_counter

  def initialize(name)
    @name = name
    @pet_counter = 0
  end
  def number_of_pets
    pet_counter
  end

  def pet_count
    @pet_counter += 1
  end
end
butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The order of the output does not matter, so long as all of the information is presented.

