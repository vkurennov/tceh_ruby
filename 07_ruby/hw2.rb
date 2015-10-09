require_relative 'hw'

Train.new('123')
Train.new('123')

number = gets.chomp
puts Train.find(number).first.number
