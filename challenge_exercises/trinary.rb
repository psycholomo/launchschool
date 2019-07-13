# Write a program that will convert a trinary number, represented as a
# string (e.g. '102012'), to its decimal equivalent using first principles
# (without using an existing method or library that can work with numeral systems).

# Trinary numbers can only contain three symbols: 0, 1, and 2. Invalid trinary
# entries should convert to decimal number 0.

# The last place in a trinary number is the 1's place. The second to last is the 3's
# place, the third to last is the 9's place, etc.

# # "102012"
#     1       0       2       0       1       2    # the number
# 1*3^5 + 0*3^4 + 2*3^3 + 0*3^2 + 1*3^1 + 2*3^0    # the value
#   243 +     0 +    54 +     0 +     3 +     2 =  302


class Trinary
  attr_reader :tri_string
  def initialize(tri_string)
    @tri_string = tri_string
  end

  def to_decimal
    return 0 if tri_string =~ /[3-9a-z]/i
    tri_array = tri_string.chars.map(&:to_i)
    power_counter = tri_array.size - 1
    total = 0
    tri_array.each do |number|
      total += number * (3**power_counter)
      power_counter -= 1
    end
    total
  end
end

trinary = Trinary.new('102012')
puts trinary.to_decimal