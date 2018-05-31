
counter = 0
puts "say something to grandma, exit by saying BYE 3 times"
while true
  
  question = gets.chomp

    

  

  if question == "BYE"
    counter +=1
     puts "HUH?! SPEAK UP, SONNY!"
    

  else
  puts "HUH?! SPEAK UP, SONNY!"
  counter = 0 
    

  end

   break if counter == 3
   

 

end

 random_year = rand(1930..1950)
  puts "NO, NOT SINCE #{random_year}!"  