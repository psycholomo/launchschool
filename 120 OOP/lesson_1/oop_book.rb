#oop_book

# puts "hello".class

# class GoodDog
# end
# #instation is when we creat an object of a class
# sparky = GoodDog.new

# module Speak
#   def Speak(sound)
#     puts sound
#   end
# end

# class GoodDog
#   include Speak
# end

# class HumanBeing
#   include Speak
# end

# sparky = GoodDog.new

# sparky.Speak("Arf!")
# bob = HumanBeing.new
# bob.Speak("Hello!")


class GoodDog
  def initialize
    puts "This object was created"
  end
end

sparky = GoodDog.new

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

fido = GoodDog.new("Fido")

puts fido.speak

























