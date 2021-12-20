# frozen_string_literal: true

# Класс окна
class Window
  def initialize(length, width)
    @width = width
    @length = length
  end

  def calc_square
    s1 = @width.to_f
    s2 = @length.to_f
    puts(s1 * s2)
  end
end

# Класс окна на котором могут быть жалюзи
class WindowWithJaa < Window
  def initialize(length, width, jal)
    super(length, width)
    @jal = jal
  end

  def blinds?
    if @jal == 1 || @jal.zero?
      if @jal == 1
        puts 'Жалюзи есть!'
      else
        puts 'Жалюзи нет!'
      end
    else
      puts 'Некорректные данные!'
    end
  end
end
