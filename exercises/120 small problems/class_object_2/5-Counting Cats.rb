# Counting Cats
# Using the following code, create a class named Cat that tracks the number of times a new Cat object is instantiated. The total number of Cat instances should be printed when ::total is invoked.

class Cat
  @@cat_counter = 0

  def initialize
    @@cat_counter += 1
  end

  def Cat.total
    return @@cat_counter
  end
end


kitty1 = Cat.new
kitty2 = Cat.new

Cat.total
# Expected output:

