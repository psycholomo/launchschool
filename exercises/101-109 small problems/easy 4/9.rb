
def integer_to_array(num)
  num_array = []
  i = num
  if num == 0
    num_array = [0]
  else
  while i > 0
  num_array.push(i % 10)
  i = i / 10
end

end
num_array.reverse
end

def integer_to_string(num)
  char_array = ['0','1','2','3','4','5','6','7','8','9']
  return_array = []
  integer_to_array(num).each do |char|
    return_array.push(char_array[char])
  end
 return_array.join("")
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

#puts 1.chr

print integer_to_string(256)
