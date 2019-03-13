
#As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
#If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

#Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, 
#respectively. Both methods should return a value in the range 0..1439.

#You may not use ruby's Date and Time methods.


def after_midnight(time)
  number_array = time.split(':').map {|num| num.to_i }
  #return number of minutes
  if number_array[0] == 24
    0
  else
  number_array[0] * 60 + number_array[1] % 1440
end
end

def before_midnight(time)
    number_array = time.split(':').map {|num| num.to_i }
  #return number of minutes
  if number_array[0] == 24
    0
  elsif number_array[0] == 0 && number_array[1] == 0
    0
  else
  1440 - (number_array[0] * 60 + number_array[1]) % 1440
end
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

#convert string to number seperated by colon
#for after hours
# (take hour * 60 + minutes) % 1440



puts after_midnight('00:00')
puts before_midnight('00:00')
