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

  def questions
    p 'Choose one: a, b, c, d, or e'
      input = gets.chomp
    if input == 'a'
      self.a
    elsif input == 'b'
      self.b
    elsif input == 'c'
      self.c
    elsif input == 'd'
      self.d
    elsif %w(x exit quit q e).member?(input)
      puts "Thank you, exiting now."
      self.exit
    else
      p "#{input} is not an option, please chose again: "
      self.questions
    end
  end

  def a
    self.questions
  end

  def b
    self.questions
  end

  def c
    self.questions
  end

  def d
    self.questions
  end

  def exit
  end
end