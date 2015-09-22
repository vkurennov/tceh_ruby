a = gets.chomp.to_i

# if a != 5
#   puts "Введите 5"
# end

unless a == 5
  puts "Введите 5"
end

puts "Введите 5" unless a == 5

if a > 5
  #...
end

unless a < 5
 # ..
end