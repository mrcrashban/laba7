# frozen_string_literal: true

require 'rspec'
require_relative './main'

describe 'main' do
  before do
    create_file_f('Hello my name is Kirill')
    create_file_g('Goodbye my best wishes Kirill')
    create_file_h
  end

  after do
    delete_files
  end

  it 'should return my Kirill' do
    file_h = File.open('./h.txt', 'r:UTF-8')
    arr = file_h.read
    expect(arr).to eq('my Kirill ')
    file_h.close
  end
end
