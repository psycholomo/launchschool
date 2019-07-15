# Writer
# # Using the code from the previous exercise, add a setter method named #name. Then, rename kitty to 'Luna' and invoke #greet again.

# Code:

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end

  def name=(new_name)
    @name = new_name

  end
end

kitty = Cat.new('Sophie')
kitty.greet
# Expected output:
kitty.name = "Luna"
kitty.greet
# Hello! My name is Sophie!
# Hello! My name is Luna!
