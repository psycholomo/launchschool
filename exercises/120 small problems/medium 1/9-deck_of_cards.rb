#Using the Card class from the previous exercise, create a Deck class that contains all of the standard 52 playing cards. Use the following code to start your work:
class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end


  def value

    case 
    when rank == "Ace"
      return 14
    when rank == "King"
      return 13
    when rank == "Queen"
      return 12
    when rank == "Jack"
      return 11
    else 
      return rank
    end

  end

  def <=>(other_card)
    self.value <=> other_card.value
  end

  def to_s
    "#{rank} of #{suit}"
  end
end


class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  attr_reader :new_deck
  def initialize
  	
  	@new_deck = set_deck
  	
  end

  def draw

  	number = rand(new_deck.count)
  	card = ""
  	if new_deck.count == 0
  		@new_deck = set_deck
  		number = rand(new_deck.count)
  		card = new_deck[number]
  		new_deck.delete_at(number)
  	else
  		card = new_deck[number]
  		new_deck.delete_at(number)
  	end
 	return card
  end
  
def set_deck

	card_deck = []
	SUITS.each do |suit|

		RANKS.each do |rank|
			card_deck << Card.new(rank,suit)
		end

  	end

  	return card_deck
end

end
#The Deck class should provide a #draw method to draw one card at random. If the deck runs out of cards, the deck should reset itself by generating a new set of 52 cards.

#Examples:

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
 drawn.count { |card| card.rank == 5 } == 4
 drawn.count { |card| card.suit == 'Hearts' } == 13

 drawn2 = []
 52.times { drawn2 << deck.draw }
 drawn != drawn2 
 p drawn2# Almost always.
#Note that the last line should almost always be true; if you shuffle the deck 1000 times a second, you will be very, very, very old before you see two consecutive shuffles produce the same results. If you get a false result, you almost certainly have something wrong.