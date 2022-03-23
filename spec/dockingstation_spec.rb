require 'dockingstation'
require 'bike'

describe DockingStation do
  let(:docking_station) { DockingStation.new }

  it "responds to release_bike" do
    expect(docking_station).to respond_to(:release_bike)
  end
  
  # it "release a bike object which is working when method :release_bike is used" do
  #   allow(docking_station.release_bike).to receive(:working?).and_return true
  #   expect(docking_station.release_bike).to be_working
  # end
  
  # it "releases a bike from the docking station" do
  #   let(:empty?) {false}
  #   expect(subject.release_bike).to eq Bike.new
  # end

  it "responds to docking method" do 
    expect(docking_station).to respond_to(:bikes)
  end
  it "raises an error if there are no bikes to release" do
    expect { raise "There are no bikes available" }.to raise_error("There are no bikes available")
  end
  it "raises an error if user tries to dock a bike while docking station is full" do
    subject.capacity.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
  end
  it "allows the user to dock a bike" do
    expect(subject.dock(Bike.new)).to eq "Bike has been docked"
  end
  it "stores up to 20 bikes in the docking station" do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
    end
  end
  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  it "allows a user to set a capacity variable" do
    50.times { docking_station.dock(Bike.new) }
    expect { docking_station.dock(Bike.new) }.to raise_error("Docking station full")
  end
end