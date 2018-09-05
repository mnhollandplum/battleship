#Runner
require './lib/board'
require './lib/computer'
require './lib/space'
def introduction
puts "Welcome to BATTLESHIP"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  play_response = gets.chomp
  if play_response == "p"
    p "play--tbc"
    computer_place_ships
  elsif play_response == "i"
      puts "instructions--tbc"
      introduction
  elsif play_response == "q"
    puts "You quit!"
      exit
  else
    puts "Please enter p to play, i for further instructions or q to quit the game"
  end
end

def computer_place_ships
  computer_board = Board.new
  computer = Computer.new(computer_board)
  computer_board.build_board
  computer.place_ship_horizontally(3, computer_board.horizontal_board)
  computer.place_ship_vertically(2, computer_board.vertical_board)
  player_place_ships
end

def player_place_ships
  #player_places_two_ships_via_terminal
  game_flow
end



def game_flow
puts "starts game"
board = Board.new
board.board_display
end


introduction
computer_place_ships
player_place_ships
game_flow