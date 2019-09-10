#Consider the following classes:

class Vehicle
  attr_reader :make, :model, :wheels
  def initialize(make, model, wheels)
    @make = make
    @model = model
    @wheels = wheels
  end
  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle

  def to_s
    "#{make} #{model}"
  end
end

class Motorcycle < Vehicle

end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, wheels, payload)
    super(make, model, wheels)
    @payload = payload
  end

end

truck = Truck.new("ford","mustang", 6, 400)

puts truck
#Refactor these classes so they all use a common superclass, and inherit behavior as needed.