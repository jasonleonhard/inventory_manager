#!/usr/bin/env ruby
require 'json'
require 'pp'
# require '../data/inventory'

class Menu

  def initialize(*args)
  end

  def filename
    puts 'Which file would you like to parse? e.g. data/inventory.json'
    file = gets.chomp
    file_str = File.read(file)
    @file_arr = JSON.parse(file_str)
  end

  def show_JSON
    pp @file_arr
  end
end
