require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity


  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def bike
    @bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end


  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

  end





#  attr_reader :bike

#def release_bike
#  Bike.new
#end

#def dock(bike)
#  @bike = bike
#end

#end
