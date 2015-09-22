#encoding: utf-8

puts "Введите имя"
name = gets.strip

# if name != '' && name.length >= 2
#   puts "Привет, #{name}"
# else
#   puts "Введите правильное значение"
# end

if (name != '' && name.length >= 2) && (name == 'Василий' || name == 'Вася') # || ... || ...
  puts "Молодец, Вася!"
else
  puts "Эх, если бы ты был Васей..."
end