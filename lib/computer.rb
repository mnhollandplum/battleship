require './lib/board'
class Computer
    attr_reader :ships, :ship_1, :ship_2
  def initialize(board)
    @ships = 2
    @ship_1 = []
    @ship_2 = []
  end

  def place_ship_horizontally(length, board)
    location = []
    row = board.keys.sample
    columns = (1...4).to_a.shuffle
    while location.count < length*2 do
      location << row
      random_column = columns.pop.to_s
      location << random_column
    end
    @ship_1 << location.join.scan(/../)
  end

  def place_ship_vertically(length, board)
    location = []
    column = board.keys.sample
    rows = ("A"..."D").to_a.shuffle
    while location.count < length*2 do
        random_row = rows.pop.to_s
        location << random_row
        location << column
    end
    @ship_2 << location.join.scan(/../)
  end

  def place_ships(board)
    board.board_coordinates[@ship_1.flatten[0]].empty = false

    board.board_coordinates[@ship_1.flatten[1]].empty = false

    board.board_coordinates[@ship_1.flatten[2]].empty = false

    board.board_coordinates[@ship_2.flatten[0]].empty = false

    board.board_coordinates[@ship_2.flatten[1]].empty = false
  end

  def shoot_at_player(board)
  options = board.board_coordinates.keys

  options.delete(options.sample)
  end
end
