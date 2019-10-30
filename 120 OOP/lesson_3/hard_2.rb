# module Moveable

#   attr_accessor :speed, :heading
#   attr_writer :fuel_capacity, :fuel_efficiency


#   def range

#     @fuel_capacity * @fuel_efficiency
#   end

# end

# class WheeledVehicle
#   include Moveable

#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end

#   def range
#     @fuel_capacity * @fuel_efficiency
#   end
# end

# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   include  Moveable
#   def initialize
#     # 2 tires are various tire pressures
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
#   include Moveable
#   attr_reader :propeller_count, :hull_count
#   attr_accessor :speed, :heading

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity
#     # ... code omitted ...
#   end

#   def range
#     super + 10
#   end
# end

arr = [1,2]

def joiner(arr, delim = ",", ender = "or" )

  return "#{arr[0]} #{ender} #{arr[1]}" if arr.length <= 2
  combined_str = []
  last_str = arr[-1]
  shorten_array = arr.first(arr.size - 1)

  shorten_array.each do |var|

    combined_str << "#{var}#{delim}"
  end

  combined_str << "#{ender} #{last_str}"

  return combined_str.join(" ")
  
end

p joiner(arr, ";", "and")

joiner(arr)