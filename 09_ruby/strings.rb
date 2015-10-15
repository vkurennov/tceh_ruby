puts "Введите строку"
str = gets.chomp

puts "Название метода"
method = gets.chomp.to_sym

puts str.send method