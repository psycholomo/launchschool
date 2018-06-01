def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if(reply == "yes")
      return true
      break
      elsif(reply == "no") 
        return false
        break
      
      else
      puts "please answer \"yes\" or \"no\""
    end
  end
  
end


