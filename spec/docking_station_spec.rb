require "../docking_station.rb"

describe "Docking station is an instance" do
  it "creates new instance of docking station" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end

  it "Docking station should release bike" do
      docking_1 = DockingStation.new
      expect(docking_1.release_bike("bike1")).to be_instance_of Bike
  end

  it "Released bike should be working" do
    docking_station_1 = DockingStation.new
    expect(docking_station_1).respond_to?(docking_station_1.release_bike("bike1").working?)
  end

  it "docking a bike in a station" do
    docking_station_1 = DockingStation.new
    expect(docking_station_1.dock_a_bike("bike 1")).to eq("bike 1 has docked")
  end

  it "check if dock has a bike" do
    docking_station_1 = DockingStation.new
    expect(docking_station_1.bike_available?).to eq(true)
  end

  it "does not release a bike if none available" do
    docking_station_1 = DockingStation.new
    expect{docking_station_1.release_bike("unavailable")}.to raise_error "bike is not available"
  end


end
