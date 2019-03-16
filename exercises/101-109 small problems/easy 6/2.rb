#Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(words)
  vowels = ['a','e','i','o','u'] + ['A','E','I','O','U']
  
  voweless_words = []
  words.each do  |word|
    the_word = ''
    word.split('').each do |char|

      if vowels.include?(char)
        next
      else
        the_word << char
      end
    end
    voweless_words.push(the_word)
  end
  voweless_words

end


#remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

p remove_vowels(%w(ABC AEIOU XYZ))