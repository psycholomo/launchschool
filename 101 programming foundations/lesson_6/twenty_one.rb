
def initialize_deck
  suite = ["a", "h", "c", "s"]
  card = ["2", "3", "4", "5", "6", "7",
          "8", "9", "10", "Jack", "Queen",
          "King", "Ace"]
  deck = []

  suite.each do |value|
    card.each do |num|
      deck << [value] + [num]
    end
  end
  deck
end

def draw_card!(player, deck)
  card = deck.sample
  deck.delete(card)
  player << card
end

def value(card)
  ten_values = ["10", "Jack", "Queen", "King"]

  if ten_values.include? card
    return 10
  elsif card.to_i > 1
    return card.to_i
  end
  0
end

def ace_value(total)
  if total > 11
    1
  else
    11
  end
end

def calculate_total(hand)
  total = 0
  hand.each do |val|
    total += value(val[1])
  end
  hand.each do |find_ace|
    if find_ace[1] == "Ace"
      total += ace_value(total)
    end
  end

  total
end

def joinor(arr, delim = ',', oper = 'and')
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
  new_string
end

def print_start(hand, player)
  print_hand = []
  hand.each_with_index do |_, ind|
    print_hand << hand[ind][1]
  end

  if player == "player"
    puts "You have a #{joinor(print_hand)} "
  elsif player == 'dealer'
    puts "Dealer has a #{hand[0][1]} and unknown card(s)."
  end
end

def reveal_dealer(hand)
  print_hand = []
  hand.each_with_index do |_, ind|
    print_hand << hand[ind][1]
  end
  puts "Dealer has a #{joinor(print_hand)}."
end

def busted?(hand)
  if calculate_total(hand) > 21
    true
  else false
  end
end

def winner?(dealer, player)
  if calculate_total(dealer) >= calculate_total(player)
    true
  else false
  end
end

new_deck = initialize_deck
player_cards = []
dealer_cards = []

2.times do
  draw_card!(player_cards, new_deck)
  draw_card!(dealer_cards, new_deck)
end

puts "Welcome to Black Jack, the goal is to get to as close to 21 as possible."

puts "you can hit or stay on your hand. The dealer has to hit until
their count is greater then or equal to 17"

answer = ""

print_start(dealer_cards, "dealer")

loop do
  print_start(player_cards, "player")
  puts "Would you like to hit or stay?(enter 'hit', or 'stay')"
  answer = gets.chomp
  if answer == 'hit'
    draw_card!(player_cards, new_deck)
  elsif answer == 'stay'
    print_start(player_cards, "player")
    break
  else puts "Please enter 'hit' or 'stay'"
  end
  calculate_total(player_cards)
  if busted?(player_cards) == true
    puts "The dealer wins"
    print_start(player_cards, "player")
    reveal_dealer(dealer_cards)
    exit
  end
end

while calculate_total(dealer_cards) < 17
  draw_card!(dealer_cards, new_deck)
  if busted?(dealer_cards) == true
    puts "The player wins"
    print_start(player_cards, "player")
    reveal_dealer(dealer_cards)
    exit
  end

end

if winner?(dealer_cards, player_cards) == true
  reveal_dealer(dealer_cards)
  puts "The dealer wins"

elsif winner?(dealer_cards, player_cards) == false
  puts "The player wins"
  reveal_dealer(dealer_cards)
end
