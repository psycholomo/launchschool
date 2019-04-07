
def minilang(stack)
  register = 0
  current_stack = stack.split(" ")
  number = nil

  current_stack.each do |word|
    case word
    when "PUSH" then current_stack.push(number)
    when "ADD" then puts "add"
    when "SUB" then puts "sub"
    when "MULT" then puts "mult"
    when "DIV" then puts "div"
    when "MOD" then puts "mod"
    when "POP" then puts "pop"
    when "PRINT" then puts register
    else register = word.to_i
    end

  end
  register
end

#initiate the register as value of 0
#if the value is a number then register = n
#use a case statement for each of the commands pushed in
#



def is_number?(string)
  if string.to_i.to_s == string
    return true
  else
    false
  end
end


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

p minilang('6 push')