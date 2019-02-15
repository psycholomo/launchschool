VALID_CHOICES = { "rock" => ["lizard", "scissors"],
                  "lizard" => ["paper", "spock"],
                  "spock" => ["scissors", "rock"],
                  "scissors" => ["paper", "lizard"],
                  "paper" => ["rock", "spock"] }

COMPUTER_INPUTS = ['rock', 'paper', 'scissors', "spock", "lizard"]

USER_INPUTS = { 'r' => 'rock',
                'p' => 'paper',
                'sc' => 'scissors',
                'sp' => 'spock',
                'l' => 'lizard' }

@scoreboard = [0, 0]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def print_score
  print("=> the score is now #{@scoreboard} \n")
end

def score_tally(result)
  if result == 0
    @scoreboard[0] += 1
  elsif result == 1
    @scoreboard[1] += 1
  end
end

def results(user_result, comp_result)
  if VALID_CHOICES[user_result][0] == comp_result ||
     VALID_CHOICES[user_result][1] == comp_result
    score_tally(0)
    prompt("you win")

  elsif user_result == VALID_CHOICES[comp_result][0] ||
        user_result == VALID_CHOICES[comp_result][1]
    score_tally(1)
    prompt("you lose")
  else
    prompt("its a tie")
  end
  print_score
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{COMPUTER_INPUTS.join(', ')}")
    prompt("you can also use the short hand of 'r' for rock, 'p' for paper,")
    prompt("'sc' for scissors, 'sp' for spock, and 'l' for lizard")
    choice = Kernel.gets().chomp
    if USER_INPUTS.key?(choice)
      choice = USER_INPUTS[choice]
      break
    elsif USER_INPUTS.value?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = COMPUTER_INPUTS.sample

  Kernel.puts("you chose #{choice}, the computer chose #{computer_choice}.")

  results(choice, computer_choice)

  if @scoreboard[0] == 5
    prompt("you won the grand tournament!")
    break
  elsif @scoreboard[1] == 5
    prompt("you lost the grand tournament.")
    break
  end
end

prompt("Thanks for playing. Goodbye!")
print @scoreboard
