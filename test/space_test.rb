require 'simplecov'
SimpleCov.start
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class SpaceTest < Minitest::Test

    def test_space_exists
      space = Space.new
      assert_instance_of Space, space
    end

    def test_space_starts_out_as_empty
      space = Space.new

      assert true, space.empty
    end

    def test_space_can_be_filled_by_ship
      space = Space.new

      space.filled_by_ship

      refute space.empty
      assert true, space.filled_by_ship
    end

    def test_space_can_be_hit_by_enemy
      space = Space.new

      space.hit_by_enemy

      refute space.empty
      assert true, space.hit_by_enemy
    end

end
