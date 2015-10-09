module Brand
  attr_accessor :brand
end

class Station
  @@stations = []

   attr_reader :name
   def initialize(name)
      @@stations << self
      @name = name     
   end

   def self.all
     @@stations
   end
end

class Train
  include Brand

  @@trains = {}

  attr_reader :number

  def initialize(number)
     @number = number
     @@trains[number] ||= []
     @@trains[number] << self
  end

   def self.find(number)
      @@trains[number]
   end
end