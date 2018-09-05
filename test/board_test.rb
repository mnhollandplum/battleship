require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/board'
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class SpaceTest < Minitest::Test

  def test_board_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_starts_with_all_empty_spaces

    board = Board.new

    assert_equal [], board.board
  end

  def test_board_has_4_x_4_spaces
    board = Board.new

    board.build_board

    assert_equal 4, board.build_board
  end

  def test_board_is_built_up_of_spaces
    board = Board.new

    board.build_board

    assert_instance_of Space, board.board[0][0]
  end

  def test_can_create_horizontal_board_hash
    board = Board.new

    board.build_board
    a1 = board.board[0][0]
    b2 = board.board[1][1]
    c3 = board.board[2][2]
    d4 = board.board[3][3]

    assert_equal a1, board.horizontal_board["A"]["1"]
    assert_equal b2,
    board.horizontal_board["B"]["2"]
    assert_equal c3,
    board.horizontal_board["C"]["3"]
    assert_equal d4,
    board.horizontal_board["D"]["4"]

    a2 = board.board[0][1]
    a3 = board.board[0][2]
    a4 = board.board[0][3]

    assert_equal ({"1"=>a1,"2"=> a2, "3"=>a3, "4"=>a4}), board.horizontal_board["A"]

  end

  def test_can_create_vertical_board_hash

      board = Board.new

      board.build_board
      a1 = board.board[0][0]
      b2 = board.board[1][1]
      c3 = board.board[2][2]
      d4 = board.board[3][3]

      assert_equal a1, board.vertical_board["1"]["A"]
      assert_equal b2,
      board.vertical_board["2"]["B"]
      assert_equal c3,
      board.vertical_board["3"]["C"]
      assert_equal d4,
      board.vertical_board["4"]["D"]

      b1 = board.board[1][0]
      c1 = board.board[2][0]
      d1 = board.board[3][0]

      assert_equal ({"A"=>a1,"B"=> b1, "C"=>c1, "D"=>d1}), board.vertical_board["1"]

  end

  def test_horizontal_and_vertical_hashes_are_made_up_of_the_same_spaces
    board = Board.new

    board.build_board

    assert_equal board.vertical_board["1"]["A"], board.horizontal_board["A"]["1"]
  end
end
