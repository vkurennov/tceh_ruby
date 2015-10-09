class Car
  attr_accessor :number

  @@cars = []

  def initialize(number)
    @number = number
    @@cars << self
    validate!    
  end

  def validate!
    raise ArgumentError, "Number can't be blank" if number.nil? || number.empty?
    raise ArgumentError, "Number should be at least 6 symbols" if number.length < 6
    raise ArgumentError, "Wrong number format" if number !~ /\A[а-я]{1}\d{3}[а-я]{2}\z/i
    true
  end

  # def m
  #   self.name = "123"
  # end
end