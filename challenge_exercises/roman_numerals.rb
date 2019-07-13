# The Romans were a clever bunch. They conquered most of Europe and
# ruled it for hundreds of years. They invented concrete and straight
# roads and even bikinis. One thing they never discovered though was
# the number zero. This made writing and dating extensive histories
# of their exploits slightly more challenging, but the system of
# numbers they came up with is still in use today. For example the BBC
# uses Roman numerals to date their programmes.

# The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice
# these letters have lots of straight lines and are hence easy to hack
# into stone tablets).

#  1  => I
# 10  => X
#  7  => VII
# There is no need to be able to convert numbers larger than about 3000.
# (The Romans themselves didn't tend to go any higher)

# Wikipedia says: Modern Roman numerals ... are written by expressing each
# digit separately starting with the left most digit and skipping any digit
# with a value of zero.

# To see this in practice, consider the example of 1990. In Roman numerals 1990 is MCMXC:

# 1000=M
# 900=CM
# 90=XC
# 2008 is written as MMVIII:

# 2000=MM
# 8=VIII

ROMANS = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C',
          500 => 'D', 1000 => 'M'}

class Integer
  def to_roman
    roman = ''
    numbers = {}
    remaining = self

    separate_to_digits(numbers, remaining)

    numbers.reverse_each do |key, value|
      roman << convert_to_roman_char(key, value)
    end

    roman
  end

  private

  def convert_to_roman_char(key, value)
    if [4, 9].include?(value)
        ROMANS[key] + ROMANS[(value + 1) * key]
    elsif value >= 5
      ROMANS[5*key] + ROMANS[key] * (value - 5)
    else
      ROMANS[key] * value
    end
  end


  def separate_to_digits(hsh, remaining)
    multiplyer = 1
    while remaining > 0
      remaining, digit = remaining.divmod(10)
      hsh[multiplyer] = digit
      multiplyer *= 10
    end
  end
end

# class Integer

#   ROMAN_NUMBERS_RULES = {
#     "M" => 1000,
#     "CM" => 900,
#     "D" => 500,
#     "CD" => 400,
#     "C" => 100,
#     "XC" => 90,
#     "L" => 50,
#     "XL" => 40,
#     "X" => 10,
#     "IX" => 9,
#     "V" => 5,
#     "IV" => 4,
#     "I" => 1
#   }

#   def to_roman
#     roman_numeral = ""
#     number = self
#     ROMAN_NUMBERS_RULES.each do |roman_number, value|
#       number_of_roman_letters = number / value
#       roman_numeral += roman_number * number_of_roman_letters
#       number -= number_of_roman_letters * value
#     end
#     roman_numeral
#   end
# end


