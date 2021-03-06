class Menu
  def start
    loop do
      input = gets.chomp.to_i

      break if input == 0

      case input
      when 1
        create_trains
      when 2
        create_stations
      else
        puts "Неверный ввод"
      end
    end
  end

  private

  def create_trains
    with_retry do
      puts "create_trains"
      raise StandardError
    end
  end

  def create_stations
    with_retry(15) do
      puts "create_stations"
      raise StandardError
    end
  
  end

  def with_retry(max_attempts = 3)
    attempts = 0
    begin
      yield
    rescue StandardError
      if attempts < max_attempts
        puts  "Попробуй еще раз" 
        attempts += 1
        retry
      end
    end
  end
end

Menu.new.start