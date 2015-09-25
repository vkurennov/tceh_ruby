a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

sides = [a, b, c]
hypo = sides.delete(sides.max)

if hypo ** 2 == sides.first ** 2 + sides.last ** 2
  puts "Прямоугольный"
else
  puts "Не прямоуголник"
end
