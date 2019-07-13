# Write a program that will take a string of digits and give you all the
# possible consecutive number series of length n in that string.

# For example, the string "01234" has the following 3-digit series:

# - 012
# - 123
# - 234
# And the following 4-digit series:

# - 0123
# - 1234
# And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

class Series
  def initialize(string_num)
    @string_num = string_num
  end

  def slices(num)
    raise ArgumentError if num > @string_num.size

    slices_of_array = []
    num_array = @string_num.chars.map(&:to_i)
    num_array.each_index do |index|
      break if index + num > num_array.size
      slices_of_array << num_array.slice(index, num)
    end
    slices_of_array
  end
end
