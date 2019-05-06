# Delete vowels
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.


def remove_vowels(arr)
  # initialize an array with vowels
  vowel_array = ['a','i','e','o','u','A','E',"I","O","U"]
  word_array = []
  arr.select do |word|
    placeholder_word = []
    word.split('').each do |char|
      if vowel_array.include?(char)
        next
      else 
        placeholder_word << char
      end
    end
    word_array.push(placeholder_word.join(''))
  end
  # loop through each character in the passed in array and if it is a vowel, ignore. else push it into the new array
  word_array
end

# Example:

#ideally you can use the delete method
#   strings.map { |string| string.delete('aeiouAEIOU') }


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))# == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))# == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']