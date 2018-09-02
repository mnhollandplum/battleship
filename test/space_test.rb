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

    def test_space_starts_out_as_empty_not_hit
      space = Space.new
      refute space.hit
      assert true, space.empty
    end

end
