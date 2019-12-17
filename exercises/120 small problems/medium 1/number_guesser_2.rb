# In the previous exercise, you wrote a number guessing game that determines a secret number between 1 and 100, and gives the user 7 opportunities to guess the number.

# Update your solution to accept a low and high value when you create a GuessingGame object, and use those values to compute a secret number for the game. You should also change the number of guesses allowed so the user can always win if she uses a good strategy. You can compute the number of guesses with:
class GuessingGame
  attr_reader :number, :range, :low, :high
  attr_accessor :guesses
  def initialize(low, high)
    @low = low
    @high = high
    @number = (low..high).to_a.sample
    @guesses = Math.log2(high - low).to_i + 1

    @range = (low..high).to_a
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
    puts "Enter a number between #{low} and #{high}: "
    loop do 
    num = gets.chomp.to_i
      if range.include?(num)

        break
      else 
        puts "Invalid guess. Enter a number between 1 and 100:"
      end

  end


  return num
  end


end
 game = GuessingGame.new(501,1500)
 game.play
# Math.log2(size_of_range).to_i + 1
# Examples:

# game = GuessingGame.new(501, 1500)
# game.play

# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 104
# Invalid guess. Enter a number between 501 and 1500: 1000
# Your guess is too low.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 1250
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 1375
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 80
# Invalid guess. Enter a number between 501 and 1500: 1312
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 1343
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 1359
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 1351
# Your guess is too high.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 1355
# That's the number!

# You won!

# game.play
# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 1000
# Your guess is too high.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 750
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 875
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 812
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 843
# Your guess is too high.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 820
# Your guess is too low.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 830
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 835
# Your guess is too low.

# You have 2 guesses remaining.
# Enter a number between 501 and 1500: 836
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 501 and 1500: 837
# Your guess is too low.

# You have no more guesses. You lost!
# Note that a game object should start a new game with a new number to guess with each call to #play.