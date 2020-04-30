class Bike
  def initialize
    @working = false
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
