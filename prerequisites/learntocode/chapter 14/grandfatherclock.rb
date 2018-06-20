



current_hour = Time.new.hour
standard_time = 0



dong_the_clock = Proc.new do

puts "DONG"
end


if current_hour > 12
  standard_time = current_hour - 12
elsif current_hour == 0
  standard_time == 12
end

for i in 1..standard_time do
  
  dong_the_clock.call
end




