bascet_hash = {}
bascet_total = 0
loop do
  puts "Введите названиетовара или СТОП для завершения ввода!"
  product_title = gets.strip
  break if product_title == 'СТОП'
  puts "Введите количество товара"
  product_count = gets.chomp.to_i
  puts "Введите стоимость за единицу товара"
  product_amout = gets.chomp.to_f
  bascet_hash[product_title] = {amount:product_amout, 
    count:product_count}
end

bascet_hash.each do |product, params|
  local_price = params[:amount] * params[:count]
  puts "#{product}: #{local_price} руб."
  bascet_total += local_price
end
puts "Итоговая сумма покупки составляет #{bascet_total} рублей"

