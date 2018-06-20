

@profile_toggle = true #turn off the profiler if false

def profile block_description, &block

  if @profile_toggle == false
    exit
  end
  
  
   



  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile '25000 doublings ' do 
  number = 1
  25000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"

  # that's the number of digits in this Huge number.
end

profile 'count to a million' do
  number = 0
  1_000_000.times do
    number = number + 1
  end


end
