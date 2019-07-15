# Hello, Sophie! (Part 2)
# Using the code from the previous exercise, move the greeting from the #initialize method to an instance method named #greet that prints a greeting when invoked.

# Code:

class Cat
  attr_reader :name
  def initialize(name)
    @name = name
    greeting
  end

  def greeting
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
# Expected output:

# Hello! My name is Sophie!