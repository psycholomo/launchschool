
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

  end

  def total
    sum = 0
    @cards.each do |ele|
      p ele
      p Cards.value(ele[0])
    end
    # definitely looks like we need to know about "cards" to produce some total
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
  def start
    # what's the sequence of steps to execute the game play?
    # deal_cards
    # show_initial_cards
    # player_turn
    # dealer_turn
    # show_result
  end
end


Game.new.start


deck = Deck.new
#puts deck
deck.shuffle

bob = Player.new("Bob")
deck.deal(bob)
p bob.cards
bob.hit(deck.card_deck)
p bob.cards
bob.total
