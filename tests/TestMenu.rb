#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative '../lib/menu'

class TestMenu < MiniTest::Test

  def setup
    @menu = Menu.new
  end

  def test_menu_is_nil
    assert @menu, nil
  end

  def call
    @menu.filename
  end

end
