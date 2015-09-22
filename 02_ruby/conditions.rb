alex_height = gets.chomp.to_i
robert_height = gets.chomp.to_i

if alex_height > robert_height
  puts "Алекс выше Роберта"
  puts "#{alex_height}"
  # ...
elsif alex_height < robert_height
  puts "Они равны"
  puts "#{alex_height}, #{robert_height}"
  # ...
# elsif ...
# elsif ...
else
  puts "Алекс ниже Роберта"
  puts "#{robert_height}"
end



