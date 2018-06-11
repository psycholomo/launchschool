require 'time'
time = Time.parse('1987-08-16 11:54:36')
current_time = Time.new

#puts current_time

#puts time



time.to_i 
current_time.to_i

#puts (current_time - time).to_i


#puts (current_time - time) / (24 * 60 * 60) #prints out days



#puts time.hour * 60 + time.min + time.sec

one_billion = 1_000_000_000
difference_in_time = one_billion.to_f - (current_time - time).to_f

billion_seconds_age = difference_in_time + current_time.to_i

puts "I will be 1 billion seconds old on " + Time.at(billion_seconds_age).to_s


