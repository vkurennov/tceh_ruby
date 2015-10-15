class Train
  @@trains = {}

  attr_reader :number

  def self.find(number)
    @@trains[number]
  end

  def initialize(number)
    @number = number
    validate!
    @@trains[@number] = self    
  end

  private

  def validate!
    raise "Train already exists" if self.class.find(number)
  end
end