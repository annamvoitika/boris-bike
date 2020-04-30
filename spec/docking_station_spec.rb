require 'docking_station'

describe DockingStation do
  it "should create a new instance of DockingStation class" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end
  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  it 'if bikes broken it does not release' do
    bike = Bike.new
    bike.report_broken
    subject.dock bike
    expect {subject.release_bike}.to raise_error 'No bikes available'
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

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
    expect(subject.dock(bike)).to eq [bike]
  end

  #it 'returns docked bikes' do
  #  bike = Bike.new
  #  subject.dock(bike)
  #  expect(subject.bike).to eq bike
#  end
  #describe '#dock' do
#  it 'raises an error when full' do
  #  DockingStation::DEFAULT_CAPACITY.times do
  #    subject.dock Bike.new
#  end
end
  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
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
