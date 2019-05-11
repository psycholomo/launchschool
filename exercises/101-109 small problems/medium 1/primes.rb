#determine if an integer passed into a method is a prime or not

def primes?(num)

  return false if num < 2

  (2..num -1).each do |int|
    if num % int == 0
      return false
    end

  end
  true
end


p primes?(7) #== true
p primes?(39) == true
p primes?(5) == true