
list_of_words = []
   puts "Please enter words until you hit enter on an empty line."
  puts "I will provide you with a list of your words alphabetically ordered"
while true
 
  word = gets.chomp
  word = word.to_s
  if word == "" || word == nil || word == " "
    break
  else list_of_words.push(word)

  end
  end

  list_of_words.sort!
  print list_of_words
