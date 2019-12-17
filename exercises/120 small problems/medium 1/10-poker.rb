#In the previous two exercises, you developed a Card class and a Deck class. You are now going to use those classes to create and evaluate poker hands. Create a class, PokerHand, that takes 5 cards from a Deck of Cards and evaluates those cards as a Poker hand.
#You should build your class using the following code skeleton:
# Include Card and Deck classes from the last two exercises.
class PokerHand
  
  attr_reader :cards_in_hand
  def initialize(deck)
    @cards_in_hand = []
    5.times {cards_in_hand << deck.draw}
    @cards_in_hand = cards_in_hand.sort_by {|card| card.value}
    
  end
  def print
    puts cards_in_hand
  end
  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end
  def royal_flush?
   
    flush? && straight? && cards_in_hand[0].value == 10
   
  end
  def straight_flush?
     straight? && flush?
    
  end
  def four_of_a_kind?
    count_number?(4)
  end
  def full_house?
    count_number?(2) && count_number?(3)
  end
  def flush?
    cards_in_hand.all? {|card| card.suit == cards_in_hand[0].suit}
  end
  def straight?
    counter = 1
    total = 0
  
    4.times do |num|
      if cards_in_hand[counter].value - cards_in_hand[num].value == 1
        total += 1
      end
      counter += 1
     
    end
    return true if total == 4
    #cards_in_hand[4].value - cards_in_hand[0].value == 4
  end
  def three_of_a_kind?
    count_number?(3)
  end
  def two_pair?
     svalue_array = []
     counter = 0
     cards_in_hand.each do |card|
      svalue_array << card.value
     end
     svalue_array.uniq.each do |num|
      if svalue_array.count(num) == 2
        counter += 1
        
      end
     end
    
    if counter == 2 
      return true
    else return false
    end
     
  end
  def pair?
    count_number?(2)
  end
  def count_number?(num)
    value_array = []
     cards_in_hand.each do |card|
      value_array << card.value
     end
    uniq_array = value_array.uniq
    
    uniq_array.each do |uniq_num|
      if value_array.count(uniq_num) == num
        return true
        break
      end
    
    end
    return false
  end
end
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
#Testing your class:
hand = PokerHand.new(Deck.new)
#hand.print
# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end
# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'
hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'
hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'
hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'
hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'
hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'
hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'
#puts hand.straight?
hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'
hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.two_pair?
puts hand.evaluate == 'Two pair'
#puts hand.evaluate
hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'
hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
# Output:
# 5 of Clubs
# 7 of Diamonds
# Ace of Hearts
# 7 of Clubs
# 5 of Spades
# Two pair
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# The exact cards and the type of hand will vary with each run.
# Most variants of Poker allow both Ace-high (A, K, Q, J, 10) and Ace-low (A, 2, 3, 4, 5) straights. For simplicity, your code only needs to recognize Ace-high straights.