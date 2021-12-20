# frozen_string_literal: true

def create_file_f(input_data)
  file = File.new('./f.txt', 'w:UTF-8')
  file.print(input_data)
  file.close
end

def create_file_g(input_data)
  file = File.new('./g.txt', 'w:UTF-8')
  file.print(input_data)
  file.close
end

def create_file_h
  file_f = File.open('./f.txt', 'r:UTF-8')
  file_g = File.open('./g.txt', 'r:UTF-8')
  file_h = File.new('./h.txt', 'w:UTF-8')
  array_one = file_f.readline.split
  array_two = file_g.readline.split
  array_one.count.times do |i|
    file_h.print("#{array_one[i]} ") if array_one[i] == array_two[i]
  end
  file_f.close
  file_g.close
  file_h.close
end

def show_file_f
  file_f = File.open('./f.txt', 'r:UTF-8')
  puts file_f.read
  file_f.close
end

def show_file_g
  file_g = File.open('./g.txt', 'r:UTF-8')
  puts file_g.read
  file_g.close
end

def show_file_h
  file_h = File.open('./h.txt', 'r:UTF-8')
  arr = file_h.read
  if arr == ''
    puts 'No matches!'
  else
    puts arr
  end
  file_h.close
end

def delete_files
  File.delete('./f.txt')
  File.delete('./g.txt')
  File.delete('./h.txt')
end

def main(input_f, input_g)
  create_file_f(input_f)
  show_file_f
  create_file_g(input_g)
  show_file_g
  create_file_h
  show_file_h
  delete_files
end
