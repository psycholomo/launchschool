#A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44,
# 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

#Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

def twice(num)
  if check_double?(num) == true
    return num
  else
    return num * 2
  end

end


def check_double?(num)
  middle = (num.to_s.length / 2)

    if num.to_s[0..middle-1] == num.to_s[middle..-1]
      return true
    else 
      return false
    end
  
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10


p check_double?(103103)



