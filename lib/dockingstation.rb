# require './bike.rb'
# require 'byebug'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes available" if empty?
    return Bike.new if @bikes.count >= 1
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
    @bikes.count == 0
  end
end


