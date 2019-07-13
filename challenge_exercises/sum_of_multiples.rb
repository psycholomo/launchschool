# Write a program that, given a number, can find the sum of all the
# multiples of particular numbers up to but not including that number.

# If we list all the natural numbers up to but not including 20 that
# are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18.
# The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a given set
# of numbers. If no set of numbers is given, default to 3 and 5.

# class SumOfMultiples
#   @@sets = [3, 5]

#   attr_reader :sets
#   def initialize(mult1=3, mult2=5, *mult3)
#     @sets = [mult1, mult2] + mult3
#   end

#   def self.to(final_number)
#     sets = @@sets
#     multiples = []
#     #get all multiples for each number given, put them in separate arrays
#     sets.each {|set| multiples << self.find_multiples(set, final_number)}
#     #combine all of the arrays, remove the duplicates, and reduce.
#     multiples.reduce(:+).uniq.reduce(:+)
#   end

#   def to(final_number)
#     multiples = []
#     sets.each {|set| multiples << self.find_multiples(set, final_number)}
#     multiples.reduce(:+).uniq.reduce(:+)
#   end

#   def self.find_multiples(base, max)
#     return [0] if max < base
#     #do not include max
#     (base...max).select {|num| num % base == 0}
#   end

#   def find_multiples(base, max)
#     return [0] if max < base
#     (base...max).select {|num| num % base == 0}
#   end
# end

class SumOfMultiples

  def initialize(*sets)
    @sets = sets
  end

  def to(final_number)
    self.class.to(final_number, @sets)
  end

  def self.to(final_number, sets=[3, 5])
    multiples = []
    #get all multiples for each number given, put them in separate arrays
    sets.each {|set| multiples << self.find_multiples(set, final_number)}
    #combine all of the arrays, remove the duplicates, and reduce.
    multiples.reduce(:+).uniq.reduce(:+)
  end

  def self.find_multiples(base, max)
    return [0] if max < base
    #do not include max
    (base...max).select {|num| num % base == 0}
  end
end
