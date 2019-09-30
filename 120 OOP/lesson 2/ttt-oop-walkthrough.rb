class Player

  attr_accessor :move, :name
  def initialize
    # maybe a "name"? what about a "move"?
    set_name
  end


end

class Human < Player

  def set_name
    n = ""
      loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry must enter a value."
    end
    self.name = n
  end

  def choose

  choice = nil

      loop do
      puts "Please choose rock, paper, lizard, spock or scissors:"

      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "sorry, invalid choice."
    end
      self.move = Move.new(choice)
    end
    
end

class Computer < Player

  def set_name
    self.name = ['R2D2', 'Hal', "Chappie", "Sonny", "number 5"].sample
  end

  def choose

    self.move = Move.new(Move::VALUES.sample)
  end

end

class Move

  VALUES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

  def initialize(value)

    @value = value
    # seems like we need something to keep track
    # of the choice... a move object can be "paper", "rock" or "scissors"
  end

  def scissors?
    @value = 'scissors'
  end

  def rock?
    @value = 'rock'

  end

  def paper?
    @value = 'paper'

  end

  def spock?
    @value = 'spock'
  end

  def lizard?
    @value = 'lizard'
  end

  def to_s
    @value
  end

  def >(other_move)
    if rock?
      return true if other_move.scissors? || other_move.lizard?
      return false
    elsif paper?
      return true if other_move.rock? || other_move.spock?
      return false
    elsif scissors?
      return true if other_move.paper? || other_move.lizard?
      return false
    elsif spock?
      return true if other_move.scissors? || other_move.rock?
    elsif lizard?
      return true if other_movie.spock? || other_move.paper?
    end
  end

  def <(other_move)
    if rock?
      return true if other_move.paper? || other_move.spock?
      return false
    elsif paper?
      return true if other_move.scissors? || other_move.lizard?
      return false
    elsif scissors?
      return true if other_move.rock? || other_move.spock?
      return false
    elsif spock? 
      return true if other_move.lizard? || other_move.paper?

    elsif lizard?
      return true if other_move.rock? || other_move.scissors?
    end
  end
end

class Rule
  def initialize
    # not sure what the "state" of a rule object should be
  end
end

# not sure where "compare" goes yet
def compare(move1, move2)

end


class Scoreboard

  attr_reader :user_score, :computer_score

  def initialize
    @user_score = 0
    @computer_score = 0
  end
  def user_score=(new_score)
    @user_score += 1
  end

  def computer_score=(new_score)
    @computer_score +=1
  end
end

class RPSGame
  attr_accessor :human, :computer, :scoreboard

  def initialize
    @human = Human.new
    @computer = Computer.new
    @scoreboard = Scoreboard.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, lizard, spock!"

  end
    def display_goodbye_message
      puts "Thanks for playing Rock, Paper, Scissors,lizard spock, Goodbye!"
    end

    def display_winner
      puts "#{human.name} chose #{human.move}."
      puts "#{computer.name} chose #{computer.move}"

      if human.move > computer.move
        puts "#{human.name} won!"
        scoreboard.user_score += 1
        puts "The #{human.name}s score is #{scoreboard.user_score}"
        puts " #{computer.name}s score is #{scoreboard.computer_score}"


      elsif human.move < computer.move
        puts "#{computer.name} won!"

        scoreboard.computer_score += 1
        puts " #{computer.name}s score is #{scoreboard.computer_score}"
        puts "The #{human.name}s score is #{scoreboard.user_score}"
      else
        "its a tie"
      end
    
    end

    def play_again?
      answer = nil
      loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y','n'].include? answer.downcase
      puts "sorry, must be y or n."
      end

      return true if answer == 'y'
      return false
    end
  def play
     display_welcome_message

     loop do
     human.choose
     computer.choose
     display_winner

     break if scoreboard.user_score >= 1 || scoreboard.computer_score >= 1

    end
     display_goodbye_message
  end
end


RPSGame.new.play