require './bike.rb'
require 'byebug'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
    @max_capacity = 20
  end

  def release_bike
    return "There are no bikes available" if empty?
    return Bike.new if @bikes.count >= 1
  end

  def dock(bike)
    fail 'Docking station full' if full?
    "Bike has been docked" if !full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end
  def empty?
    @bikes.count == 0
  end
end


