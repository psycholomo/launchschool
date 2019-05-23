# #rules for converting to egyption
# the parameter needs to be a rational number i,e, a number that can be expressed as a fraction 1/3, 2/3 etc etc
# every denominator is unique
# the egyption fraction is the sum of all distinct unit fractions. For example     1   1   1   1
#                                                                              2 = - + - + - + -
#                                                                                  1   2   3   6
# therefore we can take the rational subtract it from 1/1 and then increment the denominator and continue to get fractions until rational number is 0 over 0


# #psuedo code
#  initiralize an empty array call it return_arr
#  Initialize an denominator to the value of 1
#  initialize a counter for a while loop. Set it to the parameter of rational
#  Iterate while the counter is not equal to 0
#  - initialize a variable within the loop called current_number to the rational of 1 for the numerator and the demoniator as the initalized variable called denominator
#  - if the variable counter is greater then or equal to the current number
# .    - push the value of the current_number variables denominator into the array called return_arr
#     - re-assign the counter variable by the current number
#   - exit the if statement
#   - Increment the denominator by 1
#   - continue looping until the counter is equal to 0
#   Once the counter is equal to 0, break the loop and return the saved values in the array called return_arr

# #rules to convert egyption fraction to a whole number or fraction using Rational
# parameter is the denominators of fractions in array form
# need to be whole numbers and positive
# algorithm
# initialize a total to 0
# sum up the total to be each number in the array of the rational(numerator, and the demonitor which is each value in arr)

# #psuedo code
# initialize a total variable to 0
# for each iteration of the number in the array
# - re-assign total to the rational of 1 + the number until we reach the end of the loop. Use the Rational method
# end the loop after going through every value
# return the new total value



def egyptian(rational)
  return_arr = []
  denominator = 1
  counter = rational

  while counter != 0
    current_number = Rational(1, denominator)

      if counter >= current_number
        return_arr << current_number.denominator

        counter -= current_number
       
      end
      denominator += 1
  end
 return_arr

end


def unegyptian(arr)
  total = 0

  arr.each do |num|
    total += Rational(1, num)
  end
  total
end




 p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
# egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
 egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

 unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# rational = Rational(2, 1)
# p rational
# p rational.denominator
# p rational.numerator
# p rational.denominator / rational.numerator

# p Rational(1,1) - rational 

