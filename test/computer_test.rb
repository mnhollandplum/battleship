require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/computer'
require './lib/board'
require './lib/space'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerTest < Minitest::Test
  def test_computer_exists
    board = Board.new
    computer = Computer.new(board)
    assert_instance_of Computer, computer
  end

  def test_computer_starts_with_two_ships
    board = Board.new
    computer = Computer.new(board)
    assert_equal 2, computer.ships
  end

  def test_computer_can_place_ship_horizontally_without_repeating_columns
    board = Board.new
    computer = Computer.new(board)

    board.build_board
    board.horizontal_board

    assert_equal 3,
   computer.place_ship_horizontally(3, board.horizontal_board).flatten.count

  end

  def test_computer_can_place_ship_vertically_without_repeating_columns
    board = Board.new
    computer = Computer.new(board)

    board.build_board
    board.vertical_board

    assert_equal 2, computer.place_ship_vertically(2, board.vertical_board).flatten.count

  end

  def test_computer_can_fire_at_players_board
    computer_board = Board.new
    computer = Computer.new(computer_board)
    computer_board.build_board

    player_board = Board.new
    player = Player.new(player_board)
    player_board.build_board

    assert player_board.board_coordinates.keys.include?(computer.shoot_at_player(player_board))
  end


end
