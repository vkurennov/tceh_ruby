class Train
  # def initialize(number, type = "Unknown", model = "Unknown", number_of_cars = 0)
  #   @type = type
  #   @number = number
  #   @model = model
  #   @number_of_cars = number_of_cars
  # end

  # def initialize(number, *args)
  #   @type = type
  #   @number = args[0] || "Unknown"
  #   @model = args[1] || "Unknown"
  #   @number_of_cars = args[2] || "Unknown"
  # end

  # До версии ruby 2.0
  # def initialize(number, options = {})
  #   @number = number
  #   @type = options[:type] || "Unknown"
  #   @model = options[:model] || "Unknown"
  #   @number_of_cars = options[:number_of_cars] || "Unknown"
  # end  

  # Начиная с версии ruby 2.1

  attr_reader :type

  def initialize(number, type:, model:, number_of_cars: 0)
    @number = number
    @type = type
    @model = model
    @number_of_cars = number_of_cars
  end  
end