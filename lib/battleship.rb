#Runner
def introduction
puts "Welcome to BATTLESHIP"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
end

def game_loop
  play_response = gets.chomp
  until play_response == "q"
    if play_response == "i"
      puts "instructions"
    elsif play_response == "p"
      break
    end
  end
end

def start_game
puts "starts game"
end

play_response = gets.chomp
until play_response == "q"
introduction
game_loop
start_game
end
