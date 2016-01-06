#!/usr/bin/env ruby
require 'json'
require 'pp'
# require '../data/inventory'

class Menu

  def initialize(*args)
  end

  def filename
    puts 'Which file would you like to parse? e.g. data/inventory.json'
    # file = gets.chomp
    # file_str = File.read(file)
    file_str = File.read('data/inventory2.json')
    @file_arr = JSON.parse(file_str)
  end

  def show_JSON
    pp @file_arr
  end

  def questions
    puts 'Choose one: a, b, c, d, or e'
    puts 'a. What are the 5 most expensive items from each category?'
    puts 'b. Which cds have a total running time longer than 60 minutes?'
    puts 'c. Which authors have also released cds?'
    puts 'd. Which items have a title, track, or chapter that contains a year?'
    puts 'e. exit, quit, e, q, x'
    puts 'f. Show JSON file'
    input = gets.chomp
    if input == 'a'
      self.a
    elsif input == 'b'
      self.b
    elsif input == 'c'
      self.c
    elsif input == 'd'
      self.d
    elsif %w(exit quit e q x).member?(input)
      puts "Thank you, exiting now."
      self.exit
    elsif input == 'f'
      self.f
    else
      p "#{input} is not an option, please chose again: "
      self.questions
    end
  end

  def a
    puts 'a. What are the 5 most expensive items from each category?'
    arr = []
    size = @file_arr.size
    0.upto(size-1) do |f|
      arr[f] = @file_arr[f].values.first
    end
    puts arr.sort.reverse[0..4] # or puts arr.sort.last(5).reverse
    self.questions
  end

  def b
    puts 'b. Which cds have a total running time longer than 60 minutes?'
    time = 0
    @file_arr.each do |i|
      if i['type'] == 'cd' && i['tracks'] 
        i['tracks'].each do |j|
          if j['seconds']
            time += j['seconds']
          end
        end
        if time > 3600 # 60min * 60sec
          puts time
        else
          puts 'There are no cds with a total running time longer than 60 minutes'
        end 
      end
    end
    self.questions
  end

  def c
    puts 'c. Which authors have also released cds?'
    @file_arr.each do |i| 
      if i['type'] == 'cd'
        if i['author'] != nil
          puts i['author']
        end
      end
    end
    self.questions
  end

  def d
    puts 'd. Which items have a title, track, or chapter that contains a year?'
    self.questions
  end

  def exit
  end

  def f
    self.show_JSON
    self.questions
  end
end