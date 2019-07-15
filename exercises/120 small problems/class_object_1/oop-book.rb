class Student
  attr_reader :name
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    if grade > other_student.grade
      puts "Well Done"
    end
    "The other students grade is higher"
  end

  protected
  def grade
    @grade
  end
end


module Towable
  def can_tow?(pounds)
    punds < 2000 ? true : false
  end 
end

class Vehicle
  @@class_counter = 0
  attr_accessor :year_built

  def initialize(year_built)
    @year_built = year_built

    @@class_counter += 1
  end

  def age
    "Your car is #{years_old} year(s) old"
  end

   def self.gas_mileage(max_miles, gas_tank)
    max_miles / gas_tank
  end


def self.print_class
  puts "There are #{@@class_counter} instances created of the vehicle class"
end
private
def years_old
  Time.now.year - year_built
  end
end

class MyTruck < Vehicle
  include Towable
  CAR_DOORS = 2
end

class MyCar < Vehicle
  CAR_DOORS = 4
  attr_reader :year, :model
  attr_accessor :color
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0

  end

  def speed_up(num)
    @speed += num
    
  end

  def break(num)
    @speed -= num

  end

  def shutoff
    @speed = 0

  end

  def spray_paint(col)
    
    puts "The color of the car is #{color} and changed to #{col}"
    self.color = col
  end

 

  def to_s
    "The year of the car is #{year}, the color of the car is #{color}, and the model is a #{model}"
  end

end

car = MyCar.new(2014, "yellow","honda")

car.speed_up(50)

car.spray_paint("blue")

car.color = "red"

puts MyCar.gas_mileage(350, 12)

puts car

Vehicle.print_class

my_vehicle = Vehicle.new(1954)

Vehicle.print_class

puts MyCar.ancestors
puts MyTruck.ancestors

puts my_vehicle.age

bob = Student.new("Bob",98)
joe = Student.new("Joe", 89)

bob.better_grade_than?(joe)