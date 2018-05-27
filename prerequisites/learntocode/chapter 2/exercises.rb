#hours in a year
days = 365
hours = 24
minutes = 60
seconds = 60
minutes_in_day = hours * minutes
puts days * hours
#minutes in a decade
decade = 10

puts days * decade * minutes_in_day




# my  age in seconds (31 years old)
print "i'am "
print days * 31 * minutes_in_day * seconds
print " seconds old\n"

#the authors age (1160 million seconds)

puts (1160000000 /  minutes_in_day / 60 / days )
