#Runner
require 'pry'
require './lib/board'
require './lib/computer'
require './lib/space'
require './lib/player'
def introduction
puts "Welcome to BATTLESHIP"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  play_response = gets.chomp
  if play_response == "p"
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

def setup
  @computer_board = Board.new
  @computer_board = @computer_board.build_board

  @player_board = Board.new
  @player_board = @player_board.build_board

  @computer = Computer.new(@computer_board)
  @player = Player.new(@player_board)
end

def computer_place_ships
 @computer.place_ship_horizontally(3, @computer_board.horizontal_board)
  @computer.place_ship_vertically(3, @computer_board.vertical_board)
  #
  @computer.place_ships(@computer_board)
end

# def player_place_ships
#   board = Board.new
#   board.build_board
#
#   player = Player.new(board)
#    puts "Please enter your starting coordinate for your destroyer"
#    ship_1 = gets.chomp
#   player.place_ship_horizontally(2, board.horizontal_board, ship_1)
#   puts "Please enter your starting coordinate for your submarine"
#   ship_2 = gets.chomp
#   player.place_ship_vertically(3, board.vertical_board, ship_2)
#
#   player.place_ships(board)
# end



def game_flow
puts "starts game"
end


introduction
binding.pry
setup
computer_place_ships
# player_place_ships
game_flow
