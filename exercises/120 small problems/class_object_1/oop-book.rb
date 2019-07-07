class MyCar
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

  def self.gas_mileage(max_miles, gas_tank)
    max_miles / gas_tank
  end

  def to_s
    puts "The year of the car is #{year}, the color of the car is #{color}, and the model is a #{model}"
  end

end

car = MyCar.new(2014, "yellow","honda")

car.speed_up(50)

car.spray_paint("blue")

car.color = "red"

puts MyCar.gas_mileage(350, 12)

puts car