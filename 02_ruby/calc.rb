a = gets.chomp.to_f
oper = gets.chomp
b = gets.chomp.to_f

# if oper == '+'
#   result = a + b
# elsif oper == '-'
#   result = a - b
# elsif oper == '*'
#   result = a * b
# elsif oper == '/'
#   result = a / b
# else
#   puts "Неверная операция"
# end

case oper
  when '+'
    result = a + b
  when '-'
    result = a + b
  when '*'
    result = a * b
  when '/'
    result = a / b
  else
    puts "Неверная операция"
end


puts "#{a} #{oper} #{b} = #{result}" if result # != nil



  
  