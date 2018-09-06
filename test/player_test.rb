require 'simplecov'
SimpleCov.start
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'
require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test

  def test_player_exists
    board = Board.new
    player = Player.new(board)

    assert_instance_of Player, player
  end

  def test_player_starts_with_two_ships
    board = Board.new
    player = Player.new(board)

    assert_equal 2, player.ships
  end

  def test_player_can_place_ship_horizontally
    board = Board.new

    board.build_board

    player = Player.new(board)

    player.place_ship_horizontally(2, board.horizontal_board, "A1")

    assert_equal ["A1", "A2"], player.place_ship_horizontally(2, board.horizontal_board, "A1")
  end

  def test_player_can_place_ship_vertically
    board = Board.new

    board.build_board

    player = Player.new(board)

    player.place_ship_vertically(3, board.vertical_board, "B1")

    assert_equal ["B1", "C1", "D1"], player.place_ship_vertically(3, board.vertical_board, "B1")
  end

  def test_computer_can_fire_at_players_board
    computer_board = Board.new

    computer_board.build_board

    player_board = Board.new
    player = Player.new(player_board)
    player_board.build_board

    assert computer_board.board_coordinates.include?(player.shoot_at_computer(computer_board, "A1"))
  end

  def test_player_can_fire_at_computer_board
    computer_board = Board.new

    computer_board.build_board

    player_board = Board.new
    player = Player.new(player_board)
    player_board.build_board

    player.shoot_at_computer(computer_board, "A1")

    assert computer_board.board_coordinates.keys.include?(player.shoot_at_computer(computer_board, "A1"))
  end
end
