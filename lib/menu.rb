#!/usr/bin/env ruby
require 'json'
require 'pp'

class Menu

  def initialize(*args)
  end

  def filename
    file = gets.chomp
    file_str = File.read(file)
    @file_arr = JSON.parse(file_str)
  end

end
