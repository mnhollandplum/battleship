#Runner
require './lib/board'
def introduction
puts "Welcome to BATTLESHIP"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
end

def responses
  play_response = gets.chomp
  if play_response == "p"
    p "play--tbc"
  elsif play_response == "i"
      puts "instructions--tbc"
  elsif play_response == "q"
    puts "You quit!"
  end
end


def start_game
puts "starts game"
end


introduction
responses
start_game
board = Board.new
p board.board_display
