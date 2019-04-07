# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. 
#The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

def duplicate_count(string)

  placeholder = ""
  arr = []
  try_this = string.downcase.split('')
  value = 0

  string.downcase.split('').each_with_index do |char, ind|

    if arr.include? char 


    else arr << char
    end
    
  end

  arr.each do |char|
    if try_this.count(char) > 1
      value += 1
    end
  end

  value
end

# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
 p duplicate_count("Indivisibilities") == 2
p duplicate_count("Indivisibilities")
p duplicate_count("abcdeaa")

#grab a unique variable from the duplicate count 
# if it is included in the unique array... increment by 1

