new_arr = (1..100).map { |i| i if i % 5 == 0 }.compact
puts new_arr.inspect