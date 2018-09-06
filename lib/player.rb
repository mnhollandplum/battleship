class Player
    attr_reader :ships
  def initialize(board)
    @ships = 2
    @ship_1 = []
    @ship_2 = []
  end

  def place_ship_horizontally(length, board, starting_coordinate)
    start_point = starting_coordinate.chars
    @ship_1 << start_point.join
    @ship_1 << start_point[0] + start_point[1].next

    @ship_1.uniq
  end

  def place_ship_vertically(length, board, starting_coordinate)
    start_point = starting_coordinate.chars
    @ship_2 << start_point.join
    @ship_2 << start_point[0].next + start_point[1]
    @ship_2 << start_point[0].next.next + start_point[1]

    @ship_2.uniq
  end

  def place_ships(board)
    board.board_coordinates[@ship_1.flatten[0]].empty = false

    board.board_coordinates[@ship_1.flatten[1]].empty = false

    board.board_coordinates[@ship_2.flatten[0]].empty = false

    board.board_coordinates[@ship_2.flatten[1]].empty = false

    board.board_coordinates[@ship_2.flatten[2]].empty = false
  end

  def shoot_at_computer(board, coordinate)
    options = board.board_coordinates.keys

    options.delete(coordinate)
  end

  def shot_fills_space(board, coordinate)
    board.board_coordinates[shoot_at_computer(board, coordinate)].shot_by_enemy = true
  end
end
