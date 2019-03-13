#The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, 
#the time is after midnight. If the number of minutes is negative, the time is before midnight.

#Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

#ou may not use ruby's Date and Time classes.

def time_of_day(time)
  hour = (time / 60) % 24
  minute = time % 60
  hour_to_s = ''
  minute_to_s = ''
  if hour < 10
    hour_to_s = "0#{hour}"
  else
    hour_to_s = hour.to_s
  end
  if minute < 10
    minute_to_s = "0#{minute}"
  else
    minute_to_s = "#{minute}"
  end
  hour_to_s + ":" + minute_to_s
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

#calculate the number of minutes in a day
# to calculate the hour with a positive number
# take the number and divide by sixty. Then use the modulas operator by 24 to get the remainer. This will be the hour
# if the hour is less then ten put a 0 in front
# convert the hour to a string
# if the number is negative 
#next calculate the minutes
# take the original number and modulus by 60.. the remainder will be the amount of minutes in an hour
#this works for positive and negative numbers

puts time_of_day(-4231)
