#fix the bug
# The elsif statement in the boolean logic had no conditionals to match if a value is true. because the elsif has the map statement in it.. It goes to the next line and executes 
# the map selection on array. However because elsif has no conditional map will always return nil as the elsif branch even though empty is still considered truthy.
# Making it so that all values will return nil in this statement. by putting a comparison
# of array.length >= 2 we now execute the array.map block correct and get the correct return value.
# this is equivelent to running elsif array.map {|num| num * num} because the array is always truthy in the elsif statement, it will return nil.
def my_method(array)
  if array.empty?
    []
  elsif array.length >= 2
    array.map do |value|

      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])