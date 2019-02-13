VALID_CHOICES = {"rock" => ["lizard", "scissors"],
                "lizard" => ["paper", "spock"],
                "spock" => ["scissors", "rock"],
                "scissors" => ["paper", "lizard"],
                "paper" => ["rock", "spock"]
                }

scoreboard = [0, 0]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def score_tally()
  
end

def results(user_result, computer_result)
  if VALID_CHOICES[user_result][0] == computer_result || VALID_CHOICES[user_result][1] == computer_result
    puts "you win"
    return true
  elsif user_result == VALID_CHOICES[computer_result][0] || user_result == VALID_CHOICES[computer_result][1]
    puts "you lose"
    return false
  else 
    puts "its a tie"
    return false
  end
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("you chose #{choice}, the computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thanks for playing. Goodbye!")