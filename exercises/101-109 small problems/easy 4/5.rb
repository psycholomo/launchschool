#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
#and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

def multisum(number)
  counter = 0
  total = 0
  while number > counter
    counter +=1
    if counter % 5 == 0
      total += counter
    elsif counter % 3 == 0
      total += counter
    end
  end
  total 
end

puts(multisum(1000))