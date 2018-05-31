puts "We want to find all the leap years between a given date range."
puts "Please enter a start date: "
start_date = 1500
start_date.to_int
puts "Please enter an end date:"
end_date = 2004
end_date.to_int

for i in start_date..end_date do
  
  
  if i % 4 == 0 && i % 100 != 0
    puts i


  elsif i % 4 == 0 && i % 400 == 0
    puts i
  
  end

  
end
