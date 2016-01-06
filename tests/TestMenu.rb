#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative '../lib/menu'

class TestMenu < MiniTest::Test

  def setup
    @menu = Menu.new
  end

end
