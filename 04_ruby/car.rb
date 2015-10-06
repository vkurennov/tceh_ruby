# Class and methods

# class Car
#   def start_engine
#     puts "Wroom"
#   end

#   def beep
#     puts "beep beep"
#   end
# end

# Instance variables
# class Car
#   def go
#     @speed = 50
#   end

#   def stop
#     @speed = 0
#   end

#   def print_speed
#     puts @speed.inspect
#   end
# end


# # Constructor
# class Car
#   def initialize(speed, model)
#     @speed = speed
#     @model = model
#   end

#   def set_speed(speed)
#     @speed = speed
#   end

#   def print_speed
#     puts @speed
#   end

#   def print_model
#     puts @model
#   end
# end


# # getter and setter by hand
# class Car
#   def speed=(speed)
#     @speed = speed
#   end

#   def speed
#     @speed
#   end
# end

# # getter and setter in ruby
class Car
  attr_accessor :speed

  def initialize(speed = 0, a = 2, b = 3)
    @speed = speed
    @a = a
    @b = b
  end
  
  def accelerate
    @speed += 5
  end
end