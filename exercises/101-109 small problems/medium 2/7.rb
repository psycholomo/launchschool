#Unlucky Days
require 'date'
#Write a method that returns the number of Friday the 13ths in the year given by an argument. 
#You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) 
#and that it will remain in use for the foreseeable future.

#rules
#only need the year as an argument as an int
# can assume that the year will always be greater then 1752
# returns an integer of occurances
#algorithm
# intialize a date variable and pass it in the date class
# initialize a counter variable to represent the months
#initalize a counter to represent the number of occurances for friday the 13th
# loop through the date with the provided argument for year, the counter for month and 13 as the day
# use the method .friday? on the method to see if it is friday.
#if friday then increment the occurance counter by 1
# break out of the loop when date counter > 12
# return occurance counter


def friday_13th(date)
  counter = 1
  friday_thirteen = 0

  while counter <= 12
     new_date = Date.new(date, counter, 13)
     friday_thirteen += 1 if new_date.friday?
    counter += 1

  end
  friday_thirteen
end
#Examples:

p friday_13th(2015) #== 3
friday_13th(1986) == 1
friday_13th(2019) == 2