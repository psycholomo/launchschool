#Write a method that takes a string, and returns a new string in which every character is doubled.


def repeater(string)
  string_array = []
  string.split('').each do |char|
    string_array << char + char
  end
  string_array.join('')
end
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

p repeater('Good job!')