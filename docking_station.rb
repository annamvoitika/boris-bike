class DockingStation
  attr_reader :bike

  def initialize

  end

  def release_bike
    return Bike.new
  end

  def dock_a_bike(bike)
    @bike = bike
    # @list_of_bikes = []
    # @list_of_bikes.push(@bike)
    return "#{@bike} has docked"
  end

  def bike_available?
      return true
  end

end

class Bike
  def initialize
  end

  def working?
    return "working"
  end
end
