# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.
def repeater(str)

str_arr = []

str.split('').each do |char|
  str_arr << char + char
end
str_arr.join('')
end
# Examples:


p repeater('Hello')# == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''