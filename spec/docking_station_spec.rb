require "../docking_station.rb"

describe "Docking station is an instance" do
  it "creates new instance of docking station" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end

  it "Docking station should release bike" do
      docking_1 = DockingStation.new
      expect(docking_1.release_bike).to be_instance_of Bike
  end

  it "Released bike should be working" do
    docking_station_1 = DockingStation.new
    expect(docking_station_1).respond_to?(docking_station_1.release_bike.working?)
  end

end
