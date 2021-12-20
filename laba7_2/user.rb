# frozen_string_literal: true

require_relative './main'

puts 'Введите 1, если жалюзи есть, 0 - нет.'
jaz = gets.to_i
puts 'Введите длину'
length = gets.to_i
puts 'Введите ширину'
width = gets.to_i
w1 = Window.new(length, width)
w2 = WindowWithJaa.new(length, width, jaz)
puts 'Площадь окон:'
w1.calc_square
w2.calc_square
w2.blinds?
