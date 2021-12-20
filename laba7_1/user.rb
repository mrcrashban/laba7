# frozen_string_literal: true

require_relative './main'

puts 'Введите строку для первого файла:'
a = gets.to_s
puts 'Введите строку для второго файла:'
b = gets.to_s
main(a, b)
