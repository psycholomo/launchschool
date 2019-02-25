#Short Long Short

def short_long_short(string_1, string_2)
  if string_1.length < string_2.length
    (string_1 + string_2 + string_1)
  else 
    (string_2 + string_1 + string_2)
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

puts(short_long_short('thirty', 'forty'))
puts(short_long_short('abc', 'defgh') == "abcdefghabc")
