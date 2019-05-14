
# Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.


def scramble(word1, word2)

  arr1 = word1.split('')
  arr2 = word2.split('')
  count1 = 0
  count2 = 0
  arr1.each do |char|
    if arr2.include?(char)
      count1 += 1
    end
  end
  arr2.each do |char|
    if arr1.include?(char)
      count2 += 1
    end
  end
  
 if count1 >= count2
  return true
end
false
 
end

 p scramble('javaass', 'jjss') #== false

p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') #== true
 p scramble('katas','steak') == false
 p scramble('scriptjava','javascript') == true
 p scramble('scriptingjava','javascript') == true