# require './bike.rb'
# require 'byebug'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = 50)
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    return "Bike has been docked" if !full?
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end
  def empty?
    @bikes.empty?
  end
end


