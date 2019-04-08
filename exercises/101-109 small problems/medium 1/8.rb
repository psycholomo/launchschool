def fib(n)

  
  if n <= 2
    return 1
  end
  #puts "This is n #{n}"
  # puts fib(n - 2) + fib(n - 1)
  fib(n - 1) + fib(n - 2)
 # p num + fib(n - 1)
end

  p fib(20)


# #1 1 2 3 5 8 13


# def sum(n)
#   return 1 if n == 1

#   n + sum(n - 1)
  
# end

# sum(5)




#p fibbi(12)