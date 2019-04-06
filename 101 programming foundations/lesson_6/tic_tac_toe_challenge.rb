require 'pry'

PLAYER = 'X'
COMPUTER = 'O'

def start_game(brd)

  puts"Computer is O, user is X.\n\n"
  puts "+------+------+-----+"
  puts "|      |      |     |"
  puts "|   #{brd[1]}  |   #{brd[2]}  |  #{brd[3]}  |"
  puts "|      |      |     |"
  puts "+------+------+-----+"
  puts "|      |      |     |"
  puts "|   #{brd[4]}  |   #{brd[5]}  |  #{brd[6]}  |"
  puts "|      |      |     |"
  puts "+------+------+-----+"
  puts "|      |      |     |"
  puts "|   #{brd[7]}  |   #{brd[8]}  |  #{brd[9]}  |"
  puts "|      |      |     |"
  puts "+------+------+-----+"
end

def initialize_game()
  brd_hash = {}
  (1..9).each {|num| brd_hash[num] = " "}
  brd_hash
end

def update(brd)

  start_game(brd)
end

def player_select(brd)
  input = 0
  loop do
  puts("Please select a number from #{joinor(valid_select(brd), ',', 'or')}")

  input = gets.chomp.to_i
  break if valid_select(brd).include?(input)
    
  end
  brd[input] = PLAYER
end

def computer_select(brd)
puts("computer is selecting. . .\n")
brd[valid_select(brd).sample] = COMPUTER

end


def valid_select(brd)
  brd_keys = []

 brd.select do |key, str|
  if str == " "
    brd_keys << key
  end
end
brd_keys
end

def winner?(brd)
win_combo = [[1,2,3], [1,4,7], [1,5,9],
             [2,5,8], [3,6,9], [4,5,6],
             [7,8,9], [3,5,7]]

  win_combo.select do |value|
    if brd[value[0]] == PLAYER && brd[value[1]] == PLAYER && brd[value[2]] == PLAYER
      return "player"
    elsif brd[value[0]] == COMPUTER && brd[value[1]] == COMPUTER && brd[value[2]] == COMPUTER
      return "computer"
    end
    end
    return false
end

def tie?(brd)
  if valid_select(brd).empty?
    return true
  else false
  end
end

def joinor(arr, delim = ',', oper = 'or')
 new_string = ""

  if arr.length > 1
     arr.each do |word|

      if arr[-1] == word
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


loop do
 binding.pry
start_game(initialize_game)

game_board = initialize_game()

loop do

  p joinor([1,2,3,4,5], ",", "or")

if winner?(game_board) == "player"
  puts "The player won"
  break
elsif winner?(game_board) == "computer"
  puts "The computer won"
  break
elsif tie?(game_board) == true
  puts "Its a tie"
  break
end

player_select(game_board)
computer_select(game_board)

update(game_board)
end



  puts("Thanks for playing, would you like to play again?(y/n)")
  loop do
  answer = gets.chomp
  
    if answer == 'y'
      break
    
    elsif answer == 'n'
      puts "Game Over"
     exit
    else puts ("Please enter ('y'/'n')")
    end
  end
end

p joinor([1,2,3,4,5], ",", "or")
