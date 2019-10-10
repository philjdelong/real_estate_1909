class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.gsub("$", "").to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      category == room.category
    end
  end


# TRY THIS ==>> @rooms.sum(&:area)
  def area
    @rooms.sum do |room|
      room.area
    end
  end

  def price_per_square_foot
    (price/area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end

  def rooms_by_category

    #SHORT HAND
    # @rooms.group_by do |room|
    #   room.category

    rooms = {}
    @rooms.each do |room|
      if rooms[room.category]
        rooms[room.category] << room
      else
        rooms[room.category] = [room]
      end
    end
    rooms
  end

end
