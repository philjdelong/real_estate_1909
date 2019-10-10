require'minitest/pride'
require'minitest/autorun'
require'pry'
require'./lib/room'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    # skip
    assert_instance_of Room, @room
  end

  def test_it_has_a_category
    # skip
    assert_equal :bedroom, @room.category
  end

  def test_it_has_a_length
    # skip
    assert_equal 10, @room.length
  end

  def test_it_has_a_width
    # skip
    assert_equal 13, @room.width
  end

  def test_it_has_area
    # skip
    assert_equal 130, @room.area
  end

end
