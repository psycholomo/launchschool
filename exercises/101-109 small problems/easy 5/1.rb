
def ascii_value(string)
  total = 0
  string.split('').map do |char|
    total += char.ord
  end
  total
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

#take a string and split it into its individual characters
#convert the string to ord
#total out each character received from ord
#return the total
puts ascii_value('a')