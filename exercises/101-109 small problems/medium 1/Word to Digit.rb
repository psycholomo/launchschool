# Word to Digit
# Write a method that takes a sentence string as input, and returns the same string with any 
# sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
def word_to_digit(str)
  num_hash = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => 'six', 7 => "seven", 8 => "eight", 9 => "nine"}
  str_arr = str.split()
  
  str_arr.each_with_index do |value, ind|
    placeholder = strip_chars(value)
    if num_hash.values.include?(placeholder[0])
      str_arr[ind] = num_hash.key(placeholder[0]).to_s + placeholder[1] 
    
    end
  end
  str_arr.join(' ')
end

def strip_chars(str)
  string_arr = str.split('')
  new_arr = []
  placeholder = ""
  chars = ['.', ',']
  for i in string_arr
    if chars.include?(i)
      placeholder = i
    else new_arr << i
    end
    end
    [new_arr.join(''), placeholder]
end
p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# p strip_chars("four")


# num_hash = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => 'six', 7 => "seven", 8 => "eight", 9 => "nine"}


# p num_hash.values

try = strip_chars('four.')

p try[0]

