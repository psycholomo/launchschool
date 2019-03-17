#Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters 
#in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.


def letter_case_count(string)
lowercase = ('a'..'z').to_a
up_case = ('A'..'Z').to_a
hash_map = {lowercase: 0, uppercase: 0, neither: 0}
  string.split('').each do |char|
    if lowercase.include?(char)
      hash_map[:lowercase] += 1
    elsif up_case.include?(char)
      hash_map[:uppercase] += 1
    else hash_map[:neither] += 1
    end
  end

  hash_map
end


letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

p letter_case_count('abCdef 123')