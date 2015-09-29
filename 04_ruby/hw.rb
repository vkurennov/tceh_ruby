# (1..n).each do |a|
#   sum += a
# end

puts "Enter the day number"
day = gets.to_i
puts "Enter the month number"
month = gets.to_i
puts "Enter the year number"
year = gets.to_i

days_in_month = [0,31,28,31,30,31,30,31,31,30,31,30,31]

days_in_month[2] = 29 if year % 4 == 0

date_number = 0
i = 0

while i < month
  date_number += days_in_month[i]
  i += 1
end



