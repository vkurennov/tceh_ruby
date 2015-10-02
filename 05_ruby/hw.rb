class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def train_arrival(train)
    @trains << train
  end

  def print_trains
    @trains.each { |train| puts "Train number is #{train.num}" }
  end
end


station = Station.new('123')
station.name

abcd = Train.new('34')



station.train_arrival(abcd)
station.trains # => [<Train:0x737387>]

station.trains[0].route =  #=> '34'


# Station.new #=> initialize

# next_station_index = (@train_route_position != @train_route.last) ? @train_route.index(@train_route_position) + 1 : @train_route.index(@train_route_position)