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

  def area
    area = 0
    @rooms.each do |room|
      area += room.area
    end
    area
  end

end
