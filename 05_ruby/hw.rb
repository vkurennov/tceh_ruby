class Station
  attr_reader :name, :trains
  attr_accessor :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def train_arrival(train)
    @trains << train
    train.current_station = self
  end

  def print_trains
    @trains.each { |train| puts "Train number is #{train.num}" }
  end
end

class Route
  attr_reader :first_station, :last_station, :stations

  def initialize(first, last)
    @first_station = first
    @last_station = last
    @stops = []
    @stations = [@first_station, @stops, @last_station]
  end

  def add_station(station)
    @stops << station
  end

  def stops
    @stops.flatten
  end
end


station = Station.new('123')
station.name
station.name = '234'

station.status(station)

train = Train.new('34')



station.train_arrival(train)
station.trains # => [<Train:0x737387>]

station.trains[0].route =  #=> '34'


# Station.new #=> initialize

# next_station_index = (@train_route_position != @train_route.last) ? @train_route.index(@train_route_position) + 1 : @train_route.index(@train_route_position)