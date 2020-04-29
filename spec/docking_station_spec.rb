require 'docking_station'

describe DockingStation do
  it "should create a new instance of DockingStation class" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end
  describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
  it 'raises an error when there are no bikes available' do 
    expect {subject.release_bike }.to raise_error 'No bikes available'
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
  describe '#dock' do
  it 'raises an error when full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
end
end
end 







#  it "Docking station should release bike" do
#      expect(subject).to respond_to :release_bike
#  end
#  it 'releases working bikes' do
#    bike = subject.release_bike
#    expect(bike).to be_working
#  end
#  it 'docks something' do
#    bike = Bike.new
#  expect(subject.dock(bike)).to eq bike
#  end
#  it 'returns docked bikes' do
#    bike = Bike.new
#    subject.dock(bike)
#    expect(subject.bike).to eq bike
#  end
# end
