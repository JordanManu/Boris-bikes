require 'dockingstation'
require 'bike'

describe DockingStation do
  let(:docking_station) { DockingStation.new }

  it "responses to release_bike" do
    expect(docking_station).to respond_to(:release_bike)
  end
  
  # it "release a bike object which is working when method :release_bike is used" do
  #   allow(docking_station.release_bike).to receive(:working?).and_return true
  #   expect(docking_station.release_bike).to be_working
  # end
  it "responds to docking method" do 
    expect(docking_station).to respond_to(:bikes)
  end
  # it "docks a bike at a docking station" do 
  #   expect(docking_station.dock(:bike)).to eq :bike
  # end
  it "raises an error if there are no bikes to release" do
    expect { raise "There are no bikes available" }.to raise_error("There are no bikes available")
  end
  it "raises an error if user tries to dock a bike while docking station is full" do
    expect { raise "Docking station full" }.to raise_error("Docking station full")
  end
  it "allows the user to dock a bike" do
    expect(docking_station.dock(:bike)).to eq "Bike has been docked"
  end
  # it "stores up to 20 bikes in the docking station" do
  #   allow(docking_station).to receive(:full?).and_return true
  #   expect(docking_station.dock(Bike.new)).to raise_error("Docking station full")
  # end
end