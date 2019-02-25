#Counting the Number of Characters

def num_of_char(word)
  word_array = []
  char_counter = 0
  if word.is_a? String
    word_array = word.split('')
    for i in word_array
      if i == "" || i == " "
      else char_counter += 1
      end
    end
  end 
  char_counter
end

puts("Please write a word or multiple words:")
user_input = gets.chomp

puts("There are #{num_of_char(user_input)} characters in #{user_input}.")


