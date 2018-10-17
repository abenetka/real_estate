class House
attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    rooms_from_category = []
    @rooms.each do |room|
      if room.category == category
        rooms_from_category << room
      end
    end
    rooms_from_category
  end

  def area
    room_area = @rooms.map do |room|
      room.area
    end
    room_area.sum
  end


end
