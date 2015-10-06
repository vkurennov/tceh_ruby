module FuelTank
  def fill_tank(level)
   @fuel_tank = level
  end

  def fuel_level
    @fuel_tank
  end

  private
  attr_accessor :fuel_tank
end

class Car
  include FuelTank
end

class MotorBike
  include FuelTank
end


