# frozen_string_literal: true

require 'rspec'
require_relative './main'

describe 'main' do
  describe 'Window' do
    it 'should return square' do
      param = Window.new(3, 4)
      expect { param.calc_square }.to output("12.0\n").to_stdout
    end
  end
  describe 'WindowWithJaa' do
    it 'should return parental class for WindowWithJaa' do
      expect(WindowWithJaa.superclass).to eq(Window)
    end
    it 'should return Жалюзи есть!' do
      param = WindowWithJaa.new(5, 4, 1)
      expect { param.blinds? }.to output("Жалюзи есть!\n").to_stdout
    end
  end
end
