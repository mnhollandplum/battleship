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
end

def player_place_ships
end



def game_flow
#loop player shoots, computer shoots. Feedback for hit of miss. Feeback for sunk ship. Game over condition and feedback.
end


introduction

setup
computer_place_ships
player_place_ships
game_flow
