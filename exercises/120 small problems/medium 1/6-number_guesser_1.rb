


# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. The game should play like this:



class GuessingGame
  attr_reader :number
  attr_accessor :guesses
  RANGE = (1..100).to_a
  def initialize

    @number = (1..100).to_a.sample
    @guesses = 7
  end

  def play
    winner = false




    until winner == true do

          if @guesses == 0 
            puts ("You ran out of guesses, you lost game over.")

            break

          end


      winner = calculate(user_guess)
    
      @guesses -= 1
    end

  end

    #calculate if number is too high or too low
    #ask question and verify if its in range
    #calculate how many guesses are left

  def check_guess(value)

    if value == @number
      return true
    else
      return false
    end

  end

  def calculate(num)

    if num > @number
      puts "The number is too high."
    
      return false
  elsif num == @number
    puts "That's the number!"
    puts "You won!"

  
    return true
    exit
    else
      puts "The number is too low."
      return false

    end
    return false

  end

  def user_guess

    num = 0
    puts "You have #{@guesses} guesses remaining."
    puts "Enter a number between 1 and 100: "
    loop do 
    num = gets.chomp.to_i
      if RANGE.include?(num)

        break
      else 
        puts "Invalid guess. Enter a number between 1 and 100:"
      end

  end


  return num
  end


end
 game = GuessingGame.new
 game.play


# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
# Note that a game object should start a new game with a new number to guess with each call to #play.