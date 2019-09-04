#1
# class Dog
#   def speak
#     'bark!'
#   end

#   def swim
#     'swimming!'
#   end
# end


# teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"

# fred = Bulldog.new

# puts fred.swim
# puts fred.speak

#2

class Mammal
    def speak
    'bark!'
  end

 

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

  end

  class Cat < Mammal
    def speak
      'meow'
    end
  end 

class Dog < Mammal

  def fetch
    'fetching!'
  end
   def swim
    'swimming!'
  end
end

 class Bulldog < Dog

   def swim
     "can't swim"
   end
 end



pete = Mammal.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

pete.run                # => "running!"
pete.speak              # => NoMethodError

kitty.run               # => "running!"
kitty.speak             # => "meow!"
#kitty.fetch             # => NoMethodError

dave.speak              # => "bark!"

bud.run                 # => "running!"
bud.swim                # => "can't swim!"

p Bulldog.ancestors