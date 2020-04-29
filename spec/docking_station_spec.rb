require 'docking_station'

describe DockingStation do
  it "should create a new instance of DockingStation class" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end
  it "Docking station should release bike" do
      expect(subject).to respond_to :release_bike
  end
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'docks something' do
    bike = Bike.new
  expect(subject.dock(bike)).to eq bike
  end
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end 
end
