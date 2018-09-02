require 'simplecov'
SimpleCov.start
require './lib/ship'
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class ShipTest < Minitest::Test
  def test_ship_exists
    ship = Ship.new([0,0], 2)
    assert_instance_of Ship, ship
  end

  def test_ship_starts_with_placement
    ship = Ship.new([0,0], 2)
    assert_equal [0,0], ship.placement
  end

  def test_ship_starts_with_length
    ship = Ship.new([0,0], 2)
    assert_equal 2, ship.length
  end

  def test_ship_loses_length_when_hit
    ship = Ship.new([0,0], 2)
    ship.ship_hit
    assert_equal 1, ship.length
  end

  def test_ship_can_sink
    ship = Ship.new([0,0], 2)
    assert_equal 2, ship.length
    refute ship.ship_sunk
    ship.ship_hit
    assert_equal 1, ship.length
    refute ship.ship_sunk
    ship.ship_hit
    assert_equal 0, ship.length
    assert ship.ship_sunk
  end
end
