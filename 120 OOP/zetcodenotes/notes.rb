# class Being
#   def initialize 
#     puts "Being is created"
#   end
# end



# b1 = Being.new
# b2 = Being.allocate
# puts b2

# class Person
#   def initialize(name)
#     @name = name
#   end
#   def get_name
#     @name
#   end
# end

# p1 = Person.new("Jane")
# p2 = Person.new("Beky")

# puts p1.get_name
# puts p2.get_name

# class Person

#     def initialize name="unknown", age=0
#         @name = name
#         @age = age        
#     end
    
#     def to_s
#         "Name: #{@name}, Age: #{@age}"
#     end

# end

# p1 = Person.new
# p2 = Person.new "unknown", 17
# p3 = Person.new "Becky", 19
# p4 = Person.new "Robert"

# p p1, p2, p3, p4


#!/usr/bin/ruby

class Person

    def initialize name
        @name = name
    end

    def get_name
        @name
    end

end

per = Person.new "Jane"

puts per.get_name
puts per.send :get_name


class Circle
  @@PI = 3.141592
  def initialize 
    @radius = 0
  end
  def set_radius(radius)
    @radius = radius
  end

  def area
    @radius * @radius * @@PI
  end

end

c = Circle.new

c.set_radius(5)
puts c.area
c.set_radius(10)
puts c.area










