require_relative './bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity


  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def bikes
    @bikes
  end

  def release_bike
    raise 'No bikes available' if empty?
   raise 'Bike is broken' unless bikes.last.working?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    #bike.working = false if !working
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

class Bike
  def initialize
    @working = true
  end

  def report_broken
    @broken = true
  end

  def broken?
   @broken
  end

  def working?
    @working
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
