class DockingStation
  attr_reader :bike

  def initialize
  @list_of_bikes = ["bike1", "bike2", "bike3"]
  end

  def bike_available?
    if @list_of_bikes.include? @bike
      return true
    else
      return false
    end
  end

  def release_bike(bike)
    @bike = bike 
    if bike_available?() == false
      fail "bike is not available"
    end
    return Bike.new
  end

  def dock_a_bike(bike)
    @bike = bike
    # @list_of_bikes = []
    # @list_of_bikes.push(@bike)
    return "#{@bike} has docked"
  end


end

class Bike
  def initialize
  end

  def working?
    return "working"
  end
end
