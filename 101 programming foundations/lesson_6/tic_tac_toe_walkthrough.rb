require 'pry'
first_player = "Computer"
PLAYER = 'X'
COMPUTER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
 # system 'clear'
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

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == ' '}
end


def intialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = " "}
  new_board
end

def player_places_piece!(brd)
   square = ''
   loop do
     prompt "Choose a square (#{joinor(empty_squares(brd))})"
     square = gets.chomp.to_i
  break if empty_squares(brd).include?(square)
  
       prompt "Sorry, that's not a valid choice."
      
   end
   brd[square] = PLAYER
end

def computer_places_piece!(brd)
 
   if comp_off(brd) != nil
    comp_off(brd).each do |value| 
      if brd[value] == " " 
        brd[value] = COMPUTER
      end
    end
  elsif comp_defend(brd) != nil
    comp_defend(brd).each do |value| 
      if brd[value] == " " 
        brd[value] = COMPUTER
      end
    end
  elsif comp_mid?(brd)
    brd[5] = COMPUTER
  else
   square = empty_squares(brd).sample
  brd[square] = COMPUTER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)

  !!detect_winner(brd)
end

def detect_winner(brd)
    winning_lines = [[1,2,3], [1,4,7], [1,5,9],
                    [2,5,8], [3,6,9], [4,5,6],
                    [7,8,9], [3,5,7]]
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER && brd[line[1]] == PLAYER && brd[line[2]] == PLAYER
    return "Player"
    elsif brd[line[0]] == COMPUTER && brd[line[1]] == COMPUTER && brd[line[2]] == COMPUTER
      return "Computer"
    end
        
  end
  nil
end

def update_score!(brd, scr)
  if detect_winner(brd) == 'Player'
    scr[0] += 1

  elsif detect_winner(brd) == 'Computer'
    scr[1] += 1
  end

  scr

end

def print_score(scr)
  
  puts "Player score: #{scr[0]} Computer score: #{scr[1]}\n\n"

end

def comp_defend(brd)
  lines = [[1,2,3], [1,4,7], [1,5,9],
          [2,5,8], [3,6,9], [4,5,6],
          [7,8,9], [3,5,7]]

  lines.select do |line|
   if line.count  {|value| brd[value] == 'X' } == 2 && line.count  {|value| brd[value] == " " } == 1
    return line
  end
    
  end
  return nil
end


def comp_off(brd)
  lines = [[1,2,3], [1,4,7], [1,5,9],
          [2,5,8], [3,6,9], [4,5,6],
          [7,8,9], [3,5,7]]


  lines.select do |line|
   if line.count  {|value| brd[value] == 'O' } == 2 && line.count  {|value| brd[value] == " " } == 1
    return line
  end
    
  end
  return nil

end


def comp_mid?(brd)
  if brd[5] == ' '
    return true
  else return false
  end
end

def place_piece!(brd, current_player)
  if current_player == "Player"
    player_places_piece!(brd)
  elsif current_player == "Computer"
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == "Computer"
    return "Player"
  elsif current_player == "Player"
    return "Computer"
  end
end



  #answer = " "
  puts "Play until someone scores 5 points"
  loop do
    puts "Please select a player to go first ('Computer' or 'Player')"
    answer = gets.chomp
    if answer == "computer" || answer == "player"
    first_player = answer.capitalize
    break
  end
  end

  score = [0, 0]
  current = first_player
  puts current
  loop do

  board = intialize_board
  print_score(score)


loop do
  #binding.pry
  display_board(board)

    place_piece!(board, current)
      current = alternate_player(current)
     break if someone_won?(board) || board_full?(board)

end

display_board(board)

if someone_won?(board)
  update_score!(board, score)
  prompt "#{detect_winner(board)} won!"
else prompt "It's a tie!"
end
  #prompt "Play again? (y or n)"
  #answer = gets.chomp
 # break unless answer.downcase.start_with?('y')
 break if score[0] >= 5 || score[1] >= 5
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"

