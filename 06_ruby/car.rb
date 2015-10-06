
class Car

  attr_reader :current_rpm

  def initialize
    @current_rpm = 0
  end

  # def self.description
  #   "Это родительский класс для всех авто"
  # end

  class << self
    def description
      "Это родительский класс для всех авто"
    end
  end

  def start_engine
    # запускаем двигатель, если двигатель не запущен
      engine_start! if engine_stopped?
  end

  def engine_stopped?
    #  обороты в данный момент на нуле?
    current_rpm.zero?
  end

  def initial_rpm
    INITIAL_RPM
  end

  private

  INITIAL_RPM = 700

  attr_writer :current_rpm

  def engine_start!
    # установить обороты, при которых запускается двигатель
    self.current_rpm = initial_rpm
  end
end

class SportCar < Car
  def start_engine
    puts "Wroom!.."
    super
  end

  def initial_rpm
    1000
  end

  def stop
    @current_rpm = 0
  end
end




