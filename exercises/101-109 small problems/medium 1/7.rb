#Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

def word_to_digit(string)
  numbers = { "zero" => "1", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9" }

  arr = string.split(" ")

  string.split(" ").each_with_index do |word, ind|

    numbers.each do |key, value|
      if word.downcase == key
        arr[ind] = value
      elsif word.split(".")[0].downcase == key
        arr[ind] = value + "."

    end
    end

  end

placeholder = arr.join(" ")


end

def is_number?(string)
  if string.to_i.to_s == string
    return true
  else
    false
  end
end

def combine_numbers(string)

  arr = string.split(" ")
new_string = ""
  string.split(' ').each_with_index do |char, ind|
    if is_number?(char) && is_number?(arr[ind + 1])
        new_string += char
    end
  end
new_string
end

def format_phone(number)
  new_number = combine_numbers(number)

  if new_number.length == 7
    new_number.insert(3, "-" ) 
    new_number

  elsif new_number.length == 10
    new_number.insert(0, "(")
    
  end
  new_number
end
p word_to_digit('Please call me at FIVE five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


p word_to_digit('Please call me at five five five one two three four. Thanks.')

#puts /\b/.match("four.")

#puts "four.".gsub(/\b/, "4")
p combine_numbers("Please call me at 5 5 5 1 2 3 4 Thanks.")
p combine_numbers("5 5 5 1 2 3 4 test")

#more elegant solution

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end