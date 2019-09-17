class Player

  attr_accessor :move, :name
  def initialize(player_type = :human)
    # maybe a "name"? what about a "move"?

    @player_type = player_type
    @move = nil
    set_name
  end

  def set_name

    if human?
      n = ""
      loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry must enter a value."
    end
    self.name = n
    else
      self.name = ['R2D2', 'Hal', "Chappie", "Sonny", "number 5"].sample
    end
  end

  def choose
    if human?
      choice = nil

      loop do
      puts "Please choose rock, paper, or scissors:"

      choice = gets.chomp
      break if ['rock', 'paper', 'scissors'].include? choice
      puts "sorry, invalid choice."
    end
      self.move = choice
    else
      self.move = ["rock", "paper", "scissors"].sample
    end
  end

  def human?
    @player_type == :human
  end
end

class Move
  def initialize
    # seems like we need something to keep track
    # of the choice... a move object can be "paper", "rock" or "scissors"
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

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"

  end
    def display_goodbye_message
      puts "Thanks for playing Rock, Paper, Scissors, Goodbye!"
    end

    def display_winner
      puts "#{human.name} chose #{human.move}."
      puts "#{computer.name} chose #{computer.move}"

      case human.move
      when "rock"
        puts "It's a tie!" if computer.move == "rock"
        puts "#{human.name}" if computer.move =='scissors'
        puts "#{computer.name}" if computer.move == "paper"
      when "paper"
        puts "It's a tie!" if computer.move == "paper"
        puts "#{human.name}" if computer.move =='rock'
        puts "#{computer.name}" if computer.move == "scissors"
      when "scissors"
        puts "It's a tie!" if computer.move == "scissors"
        puts "#{human.name}" if computer.move =='paper'
        puts "#{computer.name}" if computer.move == "rock"
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

     break unless play_again?

    end
     display_goodbye_message
  end
end


RPSGame.new.play