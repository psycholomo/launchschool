#Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. 
#You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.


def dms(float)
  number = float.to_f
  angle = (number.to_s.split('.')[0]).to_i
  minute = ((number.to_s.split('.')[1].prepend('0.').to_f) * 60)
  rounded_minute = minute.to_i
  second = (minute.to_s.split('.')[1].prepend('0.').to_f * 60).to_i
  
  number_array = [angle, rounded_minute, second]
  word_array = []
  number_array.each do |num|
    if num < 10
      word_array.push("0#{num}")
    
  else word_array.push("#{num}")
    end
  end
"#{word_array[0]}°#{word_array[1]}'#{word_array[2]}\""

end

puts dms(30) == %(30°00'00")
#dms(76.73) == %(76°43'48")
#dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
#dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


#calculate the angle
# calculate the minute
# calculate the seconds
# convert to string
# return string with custom symbols

#to calculate minutes take the remaining decimal and multiply by 60.0
#  puts (0.73 * 60)  
# the remainder of the minutes decimal then becomes your seconds x 60
#puts (0.8 * 60) 

#puts 76.73.to_s.split('.')


puts dms(30)