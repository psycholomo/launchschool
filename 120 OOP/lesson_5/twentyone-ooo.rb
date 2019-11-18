class Player 
  attr_accessor :cards
  def initialize(name)
    @name = name
    @cards = []
    # what would the "data" or "states" of a Player object entail?
    # maybe cards? a name?
  end
   def hit(deck)
    @cards << deck[0]
    deck.shift
  end
  def stay
  end
  def busted?
    if total > 21
      return true
    end
    return false
  end
  def total
    sum = 0
    @cards.each do |ele|
      sum += Cards.value(ele[0])
    end
    @cards.each do |ele|
      if ele[0] == "Ace"
        sum += Cards.ace(sum)
      end
    end
    return sum
    # definitely looks like we need to know about "cards" to produce some total
  end
  def to_s
    @name
  end

   def print_cards
    new_str = ""
    cards.each_with_index do |card, ind|
      if ind == cards.length - 1
        new_str += "and a(n) "
        new_str += joinor(card)

      else

      new_str += joinor(card) + ", "
      end
    end

    return new_str
  end

    def joinor(arr, delim = '', oper = 'of')
  new_string = ""
  if arr.length > 1
    arr.each_with_index do |word, ind|
      if ind == arr.length - 1
        new_string += oper + " "
        new_string += word.to_s
      else
        new_string += word.to_s + delim + " "
      end
    end
  else new_string = arr[0]
  end
  new_string + "s"
end
 
end
class Deck
  attr_accessor :card_deck
  def initialize
    @card_deck = []
    initial_deck = Cards.new
    initial_deck.suite.each do |suites|
      initial_deck.card.each do |card|
        @card_deck << [card] + [suites]
      end
    end
    # obviously, we need some data structure to keep track of cards
    # array, hash, something else?
  end
  def shuffle
    counter = @card_deck.count
    while counter > 0
      random_index = rand(counter)
      @card_deck[counter], @card_deck[random_index] = @card_deck[random_index], @card_deck[counter]
      counter -= 1
    end
    @card_deck.each do |element|
      if element == nil
        @card_deck.delete(element)
       
      end
    end
    
  end
  def deal(player)
    2.times do |_|
    player.cards << @card_deck[0]
    @card_deck.shift
  end
    # does the dealer or the deck deal?
  end
  def to_s
    print @card_deck
  end
 
end
class Cards
  attr_reader :card, :suite
  def initialize
    @card = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
    @suite = ["Diamond", "Heart", "Spade", "Club"]
    # what are the "states" of a card?
  end
  def self.value(card)
    case card
    when "Jack"
      return 10
    when "Queen"
      return 10
    when "King"
      return 10
    else card.to_i
    end
      
    end
  
  def self.ace(total)
    case
    when total >= 11
      return 1
    else return 11
    end
  end
end
class Game

  DEALER = Player.new("Bob the Dealer")
  PLAYER = Player.new("Josh")
  def initialize
    @deck = Deck.new
  end
  def start
    # what's the sequence of steps to execute the game play?
    puts "Welcome to Twenty One, The one closest to 21 without going over 21 is the winner."
    @deck.shuffle
  
    deal_cards(DEALER)
    deal_cards(PLAYER)
    show_initial_cards
    # deal_cards
    # show_initial_cards
    # player_turn
    player_turn
    dealer_turn
    show_result
  end
  def deal_cards(player)
    puts "Dealing out the cards to #{player}"
    @deck.deal(player)
  end
  def show_initial_cards
    puts "The player has a #{PLAYER.print_cards}"
    puts "The dealer has a #{joinor(DEALER.cards[0])} and an unknown card \n"
  end
  def player_turn
    puts "It is your turn, do you want to stay or hit? \n"
    puts "You currently have a(n) #{PLAYER.print_cards}"
    puts "Your total points are #{PLAYER.total}"
    answer = "hit"

    while answer != "stay"
      answer = gets.chomp
      if answer == "hit"
        PLAYER.hit(@deck.card_deck)
          if PLAYER.busted?
            "you busted"
            break
          end
          puts "you pushed 'hit' your score is now #{PLAYER.total}"
        puts "You currently have #{PLAYER.print_cards}"
        puts "Would you like to hit or stay?"
      
      elsif answer == "stay"
        puts "You pushed stay your score is #{PLAYER.total}"
        puts "You currently have #{PLAYER.print_cards}"
      break
      else
      puts "please put a valid answer"
    end

 

    end

  end
  def dealer_turn

    while DEALER.total <= 17

      DEALER.hit(@deck.card_deck)

      puts "The Dealers total is now #{DEALER.total}"
      puts "the dealer drew a #{joinor(DEALER.cards[-1])}"
      puts "The dealer is hitting"

    end
    if DEALER.total > 21
      puts "The dealer busted with a #{DEALER.total}"
    else
      puts "The dealer stayed with a total of #{DEALER.total}"
    end
  end

  def show_result
    if winner()
    
      puts "You win!"
      puts "You won with a score of #{PLAYER.total} you win with a #{PLAYER.print_cards}"
    else 
  puts "the dealer wins!"
      puts "The dealer won with a score of #{DEALER.total} the dealer had a #{DEALER.print_cards}"

    end

  end
  def winner
    case 
    when PLAYER.busted?
      return false
    when DEALER.busted?
      return true
    when DEALER.total >= PLAYER.total
      return false



    else return true
      
    end
  end

  def joinor(arr, delim = '', oper = 'of')
  new_string = ""
  if arr.length > 1
    arr.each_with_index do |word, ind|
      if ind == arr.length - 1
        new_string += oper + " "
        new_string += word.to_s
      else
        new_string += word.to_s + delim + " "
      end
    end
  else new_string = arr[0]
  end
  new_string + "s"
end
end
Game.new.start