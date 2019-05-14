# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

def substring_test(first_str, sec_str)
  
  first_arr = find_substring(first_str)
  sec_arr = find_substring(sec_str)

  first_arr.each do |word|
    if sec_arr.include?(word)
      return true
    end
  end
 false
end

def find_substring(word)
  word_arr = []
 
  word.split('').each_with_index do |char, ind|
    placeholder = ind

    while placeholder < word.split('').length
      placeholder += 1
      word_arr << word[ind..placeholder]
    end


  end
  word_arr
end
p substring_test('Something', 'Fun') #== false
 p substring_test('Something', 'Home') #== true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true


# var1 = "something"

# var2 = "home"

#p find_substring("Something")