
@check_positive = ''

def integer_to_array(num)
  num_array = []

  i = num
  if num < 0
    @check_positive = false
    i = i * -1
  end

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
  integer_to_array(num)
  return_array.push(signed_integer_to_string(num))
  integer_to_array(num).each do |char|
    return_array.push(char_array[char])

  end
 #puts @check_positive
 return_array.join("")
end

def signed_integer_to_string(number)
  if @check_positive == false
    "-"
  elsif number == 0
  else
    "+"
  end

end


#puts integer_to_string(4321) == '+4321'
puts integer_to_string(-123) == '-123'
#puts integer_to_string(0) == '0'
#puts @check_positive
puts integer_to_string(-123)
#puts integer_to_array(-123)
#puts @check_positive

#puts -512 % 10