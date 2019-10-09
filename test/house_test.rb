require'minitest/pride'
require'minitest/autorun'
require'pry'
require'./lib/room'
require'./lib/house'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 Sugar Lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end


  def test_it_exists
  # skip

  assert_instance_of House, @house
  end


  def test_it_has_a_price
  # skip

  assert_equal "$400000", @house.price
  end


  def test_it_has_an_address
  # skip

  assert_equal "123 Sugar Lane", @house.address
  end


  def test_it_has_rooms
  # skip

  assert_equal [], @house.rooms
  end

  def test_it_can_add_rooms
  # skip

  assert_equal [@room_1], @house.add_room(@room_1)
  end

  def test_it_has_more_rooms
  # skip

  @house.add_room(@room_1)
  @house.add_room(@room_2)
  # binding.pry
  assert_equal [@room_1, @room_2], @house.rooms
  end

end
