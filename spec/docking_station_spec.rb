require "../docking_station.rb"

describe "Docking station should release bike" do
  it "creates new instance of docking station" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end
end
