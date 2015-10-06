class RailroadCar

attr_accessor :number
attr_reader :occupied

  def initialize(max_value)
    @max_value = max_value
    @occupied = 0
  end

  def load(value)
    if (@occupied + value) <= @max_value
      @occupied += value
      puts load_success_message(value)
    else
      puts load_failure_message(value)
    end
  end

  def unload(value)
    if (@occupied - value) >= 0
      @occupied -= value
      puts unload_success_message(value)
    else 
      puts unload_failure_message(value)
    end
  end

  def available
    @max_value - @occupied
  end

end

class PassengerCar < RailroadCar

  def available
    puts "Свободно мест: #{super}"
  end

  def occupied
    puts "Занято мест: #{super}"

  end

  protected

  def load_success_message(value)
    "В вагон добавлено #{value} человек"
  end

  def load_failure_message(value)
    "Невозможно добавить такое количество людей"
  end

end

class CargoCar < RailroadCar

  def load (value)
    if super(value) != false
    puts "В вагон добавлено груза: #{value}"
    else
    puts "Невозможно добавить такое количество груза"
    end
  end

  def unload(value)
    if super(value) != false
    puts "Из вагона удалено груза: #{value}"
    else
    puts "Невозможно добавить такое количество груза"
    end
  end

  def available
    puts "Свободный объем: #{super}"
  end

  def occupied
    puts "Занятый объем: #{super}"

  end
end