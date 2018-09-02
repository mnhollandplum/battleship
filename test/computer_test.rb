require 'simplecov'
SimpleCov.start
require './lib/computer'
require './lib/board'
require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerTest < Minitest::Test
  def test_computer_exists
    computer = Computer.new
    assert_instance_of Computer, computer
  end

  def test_computer_starts_with_two_ships
    computer = Computer.new
    assert_equal 2, computer.ships
  end

  def test_computer_randomly_places_two_ships_on_board
    computer = Computer.new
    ship = Ship.new(placement, length)
    assert_equal ship, computer.place_ship(placement, length)
  end

end
