# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
#  If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. 
#Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.


def after_midnight(time_string)
  
  hours_minutes = time_string.split(":")

  return (hours_minutes[0].to_i * 60 + hours_minutes[1].to_i) % 1440
end

def before_midnight(time_string)
  hours_minutes = time_string.split(":")
  return (hours_minutes[0].to_i * 60 - hours_minutes[1].to_i) % 1440

end

p after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
p after_midnight('24:00') == 0
# before_midnight('24:00') == 0




p after_midnight('24:00')
p before_midnight('24:00')
p before_midnight('12:34')
p after_midnight('23:59') == 1439