


def countdown(number)
  puts number
  if number > 0
    countdown(number - 1)


  elsif number < 0 
    exit
  end


end




puts countdown(10)
