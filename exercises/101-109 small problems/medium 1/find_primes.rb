#write a method that takes two numbers. It should print out all primes between the two numbers. Don't use rubys prime class.


def find_primes(start, stop)

  (start..stop).each do |num|
    if is_prime?(num)
      puts num
    end
  end

end

def is_prime?(num)

  # counter = 2
  # while counter <= num -1

  #   return false if num % counter == 0
  #     (2..(num - 1)).each do |n|
  #   return false if num % n == 0
  # end
  # true
   n = 2
  while n < num
    return false if num % n == 0
    n += 1
  end
  true


  #   # if num % counter == 0
  #   #   return false
  #   #   break

  #   # else 
  #   #   return true
  #   # end
  #    counter += 1

  # end
  # true
end


find_primes(3,40) #=> 3, 5, 7

p is_prime?(39)


#p 3 / 2
#p 3 -1 / 2


