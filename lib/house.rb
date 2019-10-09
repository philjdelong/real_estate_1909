class House
  attr_reader :price, :address, :rooms, :area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @area = 1900
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    x = []
    @rooms.each do |room|
      if category == room.category
        x << room
      end
    end
    # binding.pry
    return x
  end

end
