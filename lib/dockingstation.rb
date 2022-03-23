# require './bike.rb'
# require 'byebug'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bikes << bike
   "Bike has been docked" if !full?
  end

  private

  def full?
    @bikes.count >= capacity
  end
  def empty?
    @bikes.empty?
  end
end
