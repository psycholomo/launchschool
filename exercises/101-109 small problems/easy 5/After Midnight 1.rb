require 'date'
#The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, 
#the time is after midnight. If the number of minutes is negative, the time is before midnight.

#Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
#Your method should work with any integer input.

#You may not use ruby's Date and Time classes.

#Examples:

# calculate the number of minutes in a day => 1440
# Use a modulo method to calculate the minutes
# Convert minutes to hours. and then use modulo 24 to get the hour
#convert this to a string
# if the number is less then 10 then prepend a 0 for the hour
# next convert the minutes.. this should be the remainder from the hours (how do we calculate that)
# convert the minutes to a string
# next concatanate two strings together to get the time with a : in the middle


def time_of_day(num)
  hour = (num / 60) % 24

   
  minute = (1440 - num) % 60
   
  hour_to_s = ""
  minute_to_s = ""
  if hour < 10
    hour_to_s = "0#{hour}"

  else
    hour_to_s = hour.to_s
   
  end
  if minute < 10
    minute_to_s = "0#{minute}"
  else
    minute_to_s = minute.to_s
  end

"#{hour_to_s}:#{minute_to_s}"

end



p time_of_day(0)# == "00:00"
p time_of_day(-3) #== "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
#Disregard Daylight Savings and Standard Time and other complications.

#How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider 
#the day of week? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method,
# a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

#calculate a date that is sunday at midnight
#time = Time.new(2019, 05, 05)
# next calculate the day.. how to return a string
#p time.asctime
#p time - 4231 * 60
#p time + 1440 * 60
#this is the return value formated in day, hour minute
#p time.strftime("%A %H:%M.")

#the code below calculates the same day a year later
#t + (60*60*24*365) #=> 1994-02-24 12:00:00 +0900

#new_date = Date.new()
#p new_date
#p new_date.to_time

#p time

def day(minutes)
  time = Time.new(2019, 05, 05)
  time = time + minutes * 60
  time.strftime("%A %H:%M")
end

p day(-4231)