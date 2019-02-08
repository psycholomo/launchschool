# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(positive_num, word)
  iterator = 0
  if positive_num.positive?
		while iterator < positive_num
			iterator += 1
			print(word + '')
		end
	else puts('this is not a positive number')
	 end

end

repeat(2,'help')