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
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_it_exists
    # skip
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    # skip
    assert_equal 400000, @house.price
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
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end

  def test_it_return_rooms_from_category
    # skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
  end

  def test_it_has_an_area
    # skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 1900, @house.area
  end

  def test_price_per_sq_ft
    # skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 210.53, @house.price_per_square_foot
  end

  def test_sort_rooms_by_area
    # skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_4, @room_3, @room_2, @room_1], @house.rooms_sorted_by_area
  end

  def test_it_returns_all_rooms_by_category
    # skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)

    expected = {
      basement: [@room_4],
      living_room: [@room_3],
      bedroom: [@room_1, @room_2],
    }
    assert_equal expected, @house.rooms_by_category
  end

end
