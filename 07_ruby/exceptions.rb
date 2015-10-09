# begin
#   puts "Введите 2 числа"
#   first = gets.chomp.to_i
#   second = gets.chomp.to_i
#   puts first / second
# rescue ZeroDivisionError => ex
#   puts  "Нельзя делить на ноль"
#   retry
# rescue StandardError
#   puts "Произошла ошибка"
# rescue Exception
#   puts "Произошла критическая ошибка"
# end

class NetworkError < Exception
end


def connect_to_internet
  raise NetworkError, "Connection error"
end

def connect_wifi
  attempt = 0
  connect_to_internet
# rescue NetworkError => ex
#   puts ex.message
#   puts ex.class
#   attempt += 1
#   # retry if attempt < 3
# ensure
#   puts "Attempts: #{attempt}"
end

def m
  connect_wifi
end

m





